package sec1;

import java.awt.Dimension;
import java.awt.TextArea;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.util.ArrayList;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

class LoginGUI extends JFrame implements ActionListener {
	JPanel Login_GUIPanel = new JPanel();
	JTextField NickName_Text = new JTextField(20);
	JTextField Port_Text = new JTextField("####", 20);
	JTextField IPAddress_Text = new JTextField("###.###.###.###", 20);
	JLabel NickName_Label = new JLabel("유저 입력");
	JLabel Port_Label = new JLabel("포트 입력");
	JLabel IPAddress_Label = new JLabel("주소 입력");
	JButton Login_GUI_Button = new JButton("접속!");
	
	public LoginGUI() {
		setTitle("로그인 화면");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setLocationRelativeTo(null);
		setSize(300, 300);
		setResizable(false);
		setVisible(true);
		Login_GUI_Button.setPreferredSize(new Dimension(260, 40));
		Login_GUI_Button.addActionListener(this);
		Login_GUIPanel.add(NickName_Label);
		Login_GUIPanel.add(NickName_Text);
		Login_GUIPanel.add(Port_Label);
		Login_GUIPanel.add(Port_Text);
		Login_GUIPanel.add(IPAddress_Label);
		Login_GUIPanel.add(IPAddress_Text);
		Login_GUIPanel.add(Login_GUI_Button);
		add(Login_GUIPanel);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		try {
			if (e.getSource() == Login_GUI_Button) {
				String nick = NickName_Text.getText().trim();
				String ip = IPAddress_Text.getText().trim();
				int port = Integer.parseInt(Port_Text.getText().trim());
				new ChatClientGUI(nick, ip, port);
				setVisible(false);
			}
		} catch (Exception a) {
			// 만약 올바르지 않는 값이 입력되면 팝업창을 띄워줍니다.
			JOptionPane.showMessageDialog(null, "올바르지 않은 입력입니다!");
		}
	}
}
class ChatClientGUI extends JFrame implements ActionListener, KeyListener {
	String NickName;
	ClientBack CB = new ClientBack();
	JPanel ClientGUIPanel = new JPanel();
	JLabel UserLabel = new JLabel("유저 목록");
	JLabel User = new JLabel(NickName);
	JTextField Chat = new JTextField(45);
	JButton Enter = new JButton("전송");
	TextArea ChatList = new TextArea(30, 50);
	TextArea UserList = new TextArea(30, 15);

	public ChatClientGUI(String NickName, String IPAddress, int Port) {
		this.NickName = NickName;

		setTitle("고객 창");
		setVisible(true);
		setLocationRelativeTo(null);
		setSize(750, 600);
		setResizable(false);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		ChatList.setEditable(false);
		UserList.setEditable(false);
		Chat.addKeyListener(this);
		Enter.addActionListener(this);

		ClientGUIPanel.add(User);
		ClientGUIPanel.add(ChatList);
		ClientGUIPanel.add(UserLabel);
		ClientGUIPanel.add(UserList);
		ClientGUIPanel.add(Chat);
		ClientGUIPanel.add(Enter);
		add(ClientGUIPanel);
		CB.setGui(this);
		CB.getUserInfo(NickName, IPAddress, Port);
		CB.start(); // 채팅창이 켜짐과 동시에 접속을 실행해줍니다.
	}
	
	
	@Override
	public void keyTyped(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void keyPressed(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void keyReleased(KeyEvent e) {
		String Message = Chat.getText().trim();
		if (e.getKeyCode() == KeyEvent.VK_ENTER && Message.length() > 0) {
			CB.Transmit(NickName + " : " + Message + "\n");
			Chat.setText(null);
		}
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		String Message = Chat.getText().trim();
		if (e.getSource() == Enter && Message.length() > 0) {
			CB.Transmit(NickName + " : " + Message + "\n");
			Chat.setText(null);
		}
	}
	
	public void AppendMessage(String Message) {
		ChatList.append(Message);
	}

	public void AppendUserList(ArrayList NickName) {
		// 유저목록을 유저리스트에 띄워줍니다.
		String name;
		UserList.setText(null);
		for (int i = 0; i < NickName.size(); i++) {
			name = (String) NickName.get(i);
			UserList.append(name + "\n");
		}
	}
	
}

public class GUIClient {
	public static void main(String[] args) {
		new LoginGUI();
	}
}
