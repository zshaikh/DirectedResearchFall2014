package com.facebook.widget;

import java.util.*;
import com.facebook.model.*;
import android.database.*;

class SimpleGraphObjectCursor implements GraphObjectCursor
{
    private boolean closed;
    private boolean fromCache;
    private ArrayList graphObjects;
    private boolean moreObjectsAvailable;
    private int pos;
    
    SimpleGraphObjectCursor() {
        super();
        this.pos = -1;
        this.closed = false;
        this.graphObjects = new ArrayList();
        this.moreObjectsAvailable = false;
        this.fromCache = false;
    }
    
    SimpleGraphObjectCursor(final SimpleGraphObjectCursor simpleGraphObjectCursor) {
        super();
        this.pos = -1;
        this.closed = false;
        this.graphObjects = new ArrayList();
        this.moreObjectsAvailable = false;
        this.fromCache = false;
        this.pos = simpleGraphObjectCursor.pos;
        this.closed = simpleGraphObjectCursor.closed;
        (this.graphObjects = new ArrayList()).addAll(simpleGraphObjectCursor.graphObjects);
        this.fromCache = simpleGraphObjectCursor.fromCache;
    }
    
    public void addGraphObjects(final Collection c, final boolean b) {
        this.graphObjects.addAll(c);
        this.fromCache |= b;
    }
    
    @Override
    public boolean areMoreObjectsAvailable() {
        return this.moreObjectsAvailable;
    }
    
    @Override
    public void close() {
        this.closed = true;
    }
    
    @Override
    public int getCount() {
        return this.graphObjects.size();
    }
    
    @Override
    public GraphObject getGraphObject() {
        if (this.pos < 0) {
            throw new CursorIndexOutOfBoundsException("Before first object.");
        }
        if (this.pos >= this.graphObjects.size()) {
            throw new CursorIndexOutOfBoundsException("After last object.");
        }
        return this.graphObjects.get(this.pos);
    }
    
    @Override
    public int getPosition() {
        return this.pos;
    }
    
    @Override
    public boolean isAfterLast() {
        final int count = this.getCount();
        return count == 0 || this.pos == count;
    }
    
    @Override
    public boolean isBeforeFirst() {
        return this.getCount() == 0 || this.pos == -1;
    }
    
    @Override
    public boolean isClosed() {
        return this.closed;
    }
    
    @Override
    public boolean isFirst() {
        return this.pos == 0 && this.getCount() != 0;
    }
    
    @Override
    public boolean isFromCache() {
        return this.fromCache;
    }
    
    @Override
    public boolean isLast() {
        final int count = this.getCount();
        return this.pos == count - 1 && count != 0;
    }
    
    @Override
    public boolean move(final int n) {
        return this.moveToPosition(n + this.pos);
    }
    
    @Override
    public boolean moveToFirst() {
        return this.moveToPosition(0);
    }
    
    @Override
    public boolean moveToLast() {
        return this.moveToPosition(this.getCount() - 1);
    }
    
    @Override
    public boolean moveToNext() {
        return this.moveToPosition(1 + this.pos);
    }
    
    @Override
    public boolean moveToPosition(final int pos) {
        final int count = this.getCount();
        if (pos >= count) {
            this.pos = count;
            return false;
        }
        if (pos < 0) {
            this.pos = -1;
            return false;
        }
        this.pos = pos;
        return true;
    }
    
    @Override
    public boolean moveToPrevious() {
        return this.moveToPosition(this.pos - 1);
    }
    
    public void setFromCache(final boolean fromCache) {
        this.fromCache = fromCache;
    }
    
    public void setMoreObjectsAvailable(final boolean moreObjectsAvailable) {
        this.moreObjectsAvailable = moreObjectsAvailable;
    }
}
