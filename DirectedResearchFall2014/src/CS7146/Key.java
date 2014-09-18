package CS7146;

public class Key
{
	private String keyName, keyValue, keyType;
	private long keyId;

	public Key(String keyName, String keyValue, String keyType) {
		super();
		this.keyName = keyName;
		this.keyValue = keyValue;
		this.keyType = keyType;
	}
	
	public Key(String keyName, String keyValue, String keyType, long keyID) 
	{
		super();
		this.keyName = keyName;
		this.keyValue = keyValue;
		this.keyType = keyType;
		this.keyId= keyID;
	}
	
	

	public Key(String keyName, String keyType) {
		super();
		this.keyName = keyName;
		this.keyType = keyType;
	}

	public String getKeyName() {
		return keyName;
	}

	public void setKeyName(String keyName) {
		this.keyName = keyName;
	}

	public String getKeyValue() {
		return keyValue;
	}

	public void setKeyValue(String keyValue) {
		this.keyValue = keyValue;
	}

	public String getKeyType() {
		return keyType;
	}

	public void setKeyType(String keyType) {
		this.keyType = keyType;
	}

	public long getKeyId() {
		return keyId;
	}

	public void setKeyId(long keyId) {
		this.keyId = keyId;
	}
	
	
	
	
	
	
	
}
