package sec1;

import java.awt.TextArea;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

class ManagerLogin extends JFrame implements ActionListener, KeyListener {	//GUI 관리자 창 
	JPanel port_log = new JPanel();
	JLabel port_label = new JLabel("입력을 허용할 포트번호를 입력하세요");
	JLabel port_warn = new JLabel("(단, 포트번호는 0~65536 이어야 함)");
	JTextField port_num = new JTextField(20);
	JButton port_btn = new JButton("접속~!");
	ChatServerGUI serverChat;
	public ManagerLogin() {
		setTitle("GUI 관리자 창");
		setLocationRelativeTo(null);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(600,400);
		setVisible(true);
		setResizable(false);
		port_btn.addActionListener(this);
		port_num.addKeyListener(this);
		port_log.add(port_label);
		port_log.add(port_warn);
		port_log.add(port_num);
		port_log.add(port_btn);
		add(port_log);
	}

	@Override
	public void keyTyped(KeyEvent e) {
		//특정 키를 눌러다가 떼었을 때
		
	}

	@Override
	public void keyPressed(KeyEvent e) {	//키보드 입력시 검증
		try {
			if(e.getKeyCode() == KeyEvent.VK_ENTER) {
				int port = Integer.parseInt(port_num.getText().trim());
				serverChat = new ChatServerGUI(port);
				setVisible(false);
			}
		} catch(Exception a) {
			JOptionPane.showMessageDialog(null, "올바르지 않은 입력입니다.");
		}
	}

	@Override
	public void keyReleased(KeyEvent e) {
		//키보드의 특정 키에서 떼었을 때
		
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		//접속~! 버튼을 누르면
		try {
			int port = Integer.parseInt(port_num.getText().trim());
			if(e.getSource() == port_btn) {
				serverChat = new ChatServerGUI(port);
				setVisible(false);			
			}
		} catch(Exception a) {
			JOptionPane.showMessageDialog(null, "올바르지 않은 입력입니다.");
		}
	}
}

class ChatServerGUI extends JFrame implements ActionListener, KeyListener {

	JPanel serverGUI_Panel = new JPanel();
	JLabel serverLabel = new JLabel("메인 서버");
	JLabel userLable = new JLabel("사용자 목록");
	JTextField chat = new JTextField(45);
	JButton enter = new JButton("전송");
	TextArea serverChatList = new TextArea(30, 50);
	TextArea userList = new TextArea(30, 15);
	JTextField portLabel = new JTextField(50);
	ServerBack sb = new ServerBack();
	String ip;
	public ChatServerGUI(int port) {
		setTitle("메인 서버");
		setVisible(true);
		setLocationRelativeTo(null);
		setSize(750, 620);
		setResizable(false);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		try {
			InetAddress host = InetAddress.getLocalHost();
			ip = host.getHostAddress();
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}

		portLabel.setText("서버 아이피 주소 : "+ip+", 현재 연결 포트 : "+port);
		serverChatList.setEditable(false);
		userList.setEditable(false);
		chat.addKeyListener(this);
		enter.addActionListener(this);
		
		serverGUI_Panel.add(serverLabel);
		serverGUI_Panel.add(serverChatList);
		serverGUI_Panel.add(userLable);
		serverGUI_Panel.add(userList);
		serverGUI_Panel.add(chat);
		serverGUI_Panel.add(enter);
		serverGUI_Panel.add(portLabel);
		add(serverGUI_Panel);
		
		userList.append("Admin\n");
		sb.setGUI(this);
		sb.startServer(port);
		sb.start();
	}
	
	@Override
	public void keyTyped(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void keyPressed(KeyEvent e) {
		String message = chat.getText().trim();
		if(e.getKeyCode() == KeyEvent.VK_ENTER && message.length() > 0) {
			appendMessage("서버 : "+message+"\n");
			sb.transmitAll("서버 : "+message+"\n");
			chat.setText(null);
		}
	}

	@Override
	public void keyReleased(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		String message = chat.getText().trim();
		if(e.getSource() == enter && message.length() > 0) {
			appendMessage("서버 : "+message+"\n");
			sb.transmitAll("서버 : "+message+"\n");
			chat.setText(null);
		}
	}
	
	public void appendMessage(String message) { //메시지 추가 동작
		serverChatList.append(message);
	}
	
	public void appendUserList(List<String> nickNameList) { //사용자 목록에 추가 동작
		String name;
		for(int i=0;i<nickNameList.size();i++) {
			name = (String) nickNameList.get(i);
			userList.append(name + "\n");
		}
	}
	
}

public class GUIServer {
	public static void main(String[] args) {
		new ManagerLogin();
	}
}
