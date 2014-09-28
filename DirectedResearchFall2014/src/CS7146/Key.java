package CS7146;

public class Key
{
	private String keyName, keyValue, keyType;
	private String keyId;
	boolean mappedToActivity, mappedToCode, mappedToOtherXML;

	public Key(String keyName, String keyValue, String keyType) {
		super();
		this.keyName = keyName;
		this.keyValue = keyValue;
		this.keyType = keyType;
		this.mappedToActivity=false;
		this.mappedToCode=false;
		this.mappedToOtherXML=false;
	}
	
	public Key(String keyName, String keyValue, String keyType, String keyID) 
	{
		super();
		this.keyName = keyName;
		this.keyValue = keyValue;
		this.keyType = keyType;
		this.keyId= keyID;
		this.mappedToActivity=false;
		this.mappedToCode=false;
		this.mappedToOtherXML=false;
	}
	
	

	public Key(String keyName, String keyType) {
		super();
		this.keyName = keyName;
		this.keyType = keyType;
		this.mappedToActivity=false;
		this.mappedToCode=false;
		this.mappedToOtherXML=false;
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

	public String getKeyId() {
		return keyId;
	}

	public void setKeyId(String keyId) {
		this.keyId = keyId;
	}

	public boolean isMappedToActivity() {
		return mappedToActivity;
	}

	public void setMappedToActivity(boolean mappedToActivity) {
		this.mappedToActivity = mappedToActivity;
	}

	public boolean isMappedToCode() {
		return mappedToCode;
	}

	public void setMappedToCode(boolean mappedToCode) {
		this.mappedToCode = mappedToCode;
	}

	public boolean isMappedToOtherXML() {
		return mappedToOtherXML;
	}

	public void setMappedToOtherXML(boolean mappedToOtherXML) {
		this.mappedToOtherXML = mappedToOtherXML;
	}
	
	
	
	
	
	
	
}
