public void setup() {
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}

public void draw() { } // not used

public int findFirstVowel(String sWord) { // If there are no vowels, return -1
  for (int i = 0; i < sWord.length(); i++) {
    char c = sWord.charAt(i);
    if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') return i;
  }
	return -1;
}

public String pigLatin(String sWord) { // sWord.length() > 0
  int vowelAt = findFirstVowel(sWord);
	if(vowelAt == -1) return sWord + "ay";
  else if (vowelAt == 0) return sWord + "way";
  else if (sWord.substring(0,2).equals("qu")) return sWord.substring(2) + "quay";
	else return sWord.substring(vowelAt) + sWord.substring(0, vowelAt) + "ay";
}
