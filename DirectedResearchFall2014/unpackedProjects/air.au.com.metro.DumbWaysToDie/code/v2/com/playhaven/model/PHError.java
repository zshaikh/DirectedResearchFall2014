package v2.com.playhaven.model;

public class PHError
{
    protected int errorCode;
    protected String message;
    
    public PHError(final int n) {
        this("", n);
    }
    
    public PHError(final Exception ex) {
        this(ex.getMessage(), 0);
    }
    
    public PHError(final String s) {
        this(s, -1);
    }
    
    public PHError(final String message, final int errorCode) {
        super();
        this.message = message;
        this.errorCode = errorCode;
    }
    
    public int getErrorCode() {
        return this.errorCode;
    }
    
    public String getMessage() {
        return this.message;
    }
    
    @Override
    public String toString() {
        return String.format("PHError with message '%s' and error code %d", this.message, this.errorCode);
    }
}
