package com.flurry.org.codehaus.jackson;

public class Version implements Comparable<Version>
{
    private static final Version UNKNOWN_VERSION;
    protected final int _majorVersion;
    protected final int _minorVersion;
    protected final int _patchLevel;
    protected final String _snapshotInfo;
    
    static {
        UNKNOWN_VERSION = new Version(0, 0, 0, null);
    }
    
    public Version(final int majorVersion, final int minorVersion, final int patchLevel, final String snapshotInfo) {
        super();
        this._majorVersion = majorVersion;
        this._minorVersion = minorVersion;
        this._patchLevel = patchLevel;
        this._snapshotInfo = snapshotInfo;
    }
    
    public static Version unknownVersion() {
        return Version.UNKNOWN_VERSION;
    }
    
    @Override
    public int compareTo(final Version version) {
        int n = this._majorVersion - version._majorVersion;
        if (n == 0) {
            n = this._minorVersion - version._minorVersion;
            if (n == 0) {
                n = this._patchLevel - version._patchLevel;
            }
        }
        return n;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (o == null) {
            return false;
        }
        if (o.getClass() != this.getClass()) {
            return false;
        }
        final Version version = (Version)o;
        return version._majorVersion == this._majorVersion && version._minorVersion == this._minorVersion && version._patchLevel == this._patchLevel;
    }
    
    public int getMajorVersion() {
        return this._majorVersion;
    }
    
    public int getMinorVersion() {
        return this._minorVersion;
    }
    
    public int getPatchLevel() {
        return this._patchLevel;
    }
    
    @Override
    public int hashCode() {
        return this._majorVersion + this._minorVersion + this._patchLevel;
    }
    
    public boolean isSnapshot() {
        return this._snapshotInfo != null && this._snapshotInfo.length() > 0;
    }
    
    public boolean isUknownVersion() {
        return this == Version.UNKNOWN_VERSION;
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append(this._majorVersion).append('.');
        sb.append(this._minorVersion).append('.');
        sb.append(this._patchLevel);
        if (this.isSnapshot()) {
            sb.append('-').append(this._snapshotInfo);
        }
        return sb.toString();
    }
}
