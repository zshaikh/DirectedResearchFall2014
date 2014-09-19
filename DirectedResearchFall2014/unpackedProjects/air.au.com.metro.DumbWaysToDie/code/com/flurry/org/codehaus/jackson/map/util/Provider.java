package com.flurry.org.codehaus.jackson.map.util;

import java.util.*;

public interface Provider<T>
{
    Collection<T> provide();
}
