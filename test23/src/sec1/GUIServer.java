package sec1;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import javax.swing.*;

class ManagerLogin extends JFrame implements ActionListener, KeyListener {	//GUI 관리자 창 
	JPanel port_log = new JPanel();
	JLabel port_label = new JLabel("입력을 허용할 포트번호를 입력하세요");
	JLabel port_warn = new JLabel("(단, 포트번호는 0~65536 이어야 함)");
	JTextField port_num = new JTextField(20);
	JButton port_btn = new JButton("접속~!");
	
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
		// TODO Auto-generated method stub
		
	}

	@Override
	public void keyPressed(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void keyReleased(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		
	}
	
	
}
public class GUIServer {
	public static void main(String[] args) {
		new ManagerLogin();
	}
}
