package com.vungle.sdk;

import java.util.*;

public final class bc implements b
{
    @Override
    public final void a(final List<String> list) {
        if (list.isEmpty()) {
            return;
        }
        final StringBuilder sb = new StringBuilder();
        sb.append("Errors creating object graph:");
        final Iterator<String> iterator = list.iterator();
        while (iterator.hasNext()) {
            sb.append("\n  ").append(iterator.next());
        }
        throw new IllegalStateException(sb.toString());
    }
}
