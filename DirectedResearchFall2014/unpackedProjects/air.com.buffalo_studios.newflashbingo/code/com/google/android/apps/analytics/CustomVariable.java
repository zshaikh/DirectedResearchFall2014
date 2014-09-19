package com.google.android.apps.analytics;

class CustomVariable
{
    public static final String INDEX_ERROR_MSG = "Index must be between 1 and 50, inclusive.";
    public static final int MAX_CUSTOM_VARIABLES = 50;
    public static final int MAX_CUSTOM_VARIABLE_LENGTH = 64;
    public static final int PAGE_SCOPE = 3;
    public static final int SESSION_SCOPE = 2;
    public static final int VISITOR_SCOPE = 1;
    private final int index;
    private final String name;
    private final int scope;
    private final String value;
    
    public CustomVariable(final int n, final String s, final String s2) {
        this(n, s, s2, 3);
    }
    
    public CustomVariable(final int index, final String s, final String s2, final int n) {
        super();
        if (n != 1 && n != 2 && n != 3) {
            throw new IllegalArgumentException("Invalid Scope:" + n);
        }
        if (index < 1 || index > 50) {
            throw new IllegalArgumentException("Index must be between 1 and 50, inclusive.");
        }
        if (s == null || s.length() == 0) {
            throw new IllegalArgumentException("Invalid argument for name:  Cannot be empty");
        }
        if (s2 == null || s2.length() == 0) {
            throw new IllegalArgumentException("Invalid argument for value:  Cannot be empty");
        }
        final int length = AnalyticsParameterEncoder.encode(s + s2).length();
        if (length > 64) {
            throw new IllegalArgumentException("Encoded form of name and value must not exceed 64 characters combined.  Character length: " + length);
        }
        this.index = index;
        this.scope = n;
        this.name = s;
        this.value = s2;
    }
    
    public int getIndex() {
        return this.index;
    }
    
    public String getName() {
        return this.name;
    }
    
    public int getScope() {
        return this.scope;
    }
    
    public String getValue() {
        return this.value;
    }
}
