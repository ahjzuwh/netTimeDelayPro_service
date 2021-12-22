package modules.business;

public class InitBusinessSystem {
	
	private static InitBusinessSystem instance = null;
	public static InitBusinessSystem getInstance() {
		if (instance == null) {
			instance = new InitBusinessSystem();
		}
		return instance;
	}
	private InitBusinessSystem() {
		// TODO Auto-generated method stub
		
	}
}
