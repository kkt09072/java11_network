package sec1;

import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
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
		setSize(300, 260);
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
		// TODO Auto-generated method stub
		
	}
}
public class GUIClient {
	public static void main(String[] args) {
		new LoginGUI();
	}
}
