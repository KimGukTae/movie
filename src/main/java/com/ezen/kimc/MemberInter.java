package com.ezen.kimc;

import java.util.ArrayList;

public interface MemberInter {
	public void memberinsert(String id, String pw, String admin);
	public MemberDTO login(String id, String pw);
	public ArrayList<MemberDTO> memberout();
	public ArrayList<MemberDTO> logintrue(String id);
	public ArrayList<MemberDTO> ticketing(String id);
	
}
