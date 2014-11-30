.class public Lorg/apache/log4j/config/PropertySetter;
.super Ljava/lang/Object;
.source "PropertySetter.java"


# static fields
.field static class$java$lang$String:Ljava/lang/Class;

.field static class$org$apache$log4j$Priority:Ljava/lang/Class;


# instance fields
.field protected obj:Ljava/lang/Object;

.field protected props:[Ljava/beans/PropertyDescriptor;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    .line 67
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 223
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setProperties(Ljava/lang/Object;Ljava/util/Properties;Ljava/lang/String;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v0, p0}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/config/PropertySetter;->setProperties(Ljava/util/Properties;Ljava/lang/String;)V

    .line 98
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/log4j/spi/OptionHandler;

    if-eqz v0, :cond_0

    .line 257
    iget-object p0, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    .end local p0    # "this":Lorg/apache/log4j/config/PropertySetter;
    check-cast p0, Lorg/apache/log4j/spi/OptionHandler;

    invoke-interface {p0}, Lorg/apache/log4j/spi/OptionHandler;->activateOptions()V

    .line 259
    :cond_0
    return-void
.end method

.method protected convertArg(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    const/4 v2, 0x0

    .line 219
    if-nez p1, :cond_0

    move-object v1, v2

    .line 238
    :goto_0
    return-object v1

    .line 222
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "v":Ljava/lang/String;
    sget-object v1, Lorg/apache/log4j/config/PropertySetter;->class$java$lang$String:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.lang.String"

    invoke-static {v1}, Lorg/apache/log4j/config/PropertySetter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/config/PropertySetter;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 224
    goto :goto_0

    .line 223
    :cond_1
    sget-object v1, Lorg/apache/log4j/config/PropertySetter;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_1

    .line 225
    :cond_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 228
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 230
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 231
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 232
    :cond_5
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 233
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 235
    :cond_6
    sget-object v1, Lorg/apache/log4j/config/PropertySetter;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    if-nez v1, :cond_7

    const-string v1, "org.apache.log4j.Priority"

    invoke-static {v1}, Lorg/apache/log4j/config/PropertySetter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/config/PropertySetter;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 236
    sget-object v1, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {v0, v1}, Lorg/apache/log4j/helpers/OptionConverter;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v1

    goto :goto_0

    .line 235
    :cond_7
    sget-object v1, Lorg/apache/log4j/config/PropertySetter;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    goto :goto_2

    :cond_8
    move-object v1, v2

    .line 238
    goto :goto_0
.end method

.method protected getPropertyDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v1, p0, Lorg/apache/log4j/config/PropertySetter;->props:[Ljava/beans/PropertyDescriptor;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/log4j/config/PropertySetter;->introspect()V

    .line 246
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/log4j/config/PropertySetter;->props:[Ljava/beans/PropertyDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 247
    iget-object v1, p0, Lorg/apache/log4j/config/PropertySetter;->props:[Ljava/beans/PropertyDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/beans/FeatureDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lorg/apache/log4j/config/PropertySetter;->props:[Ljava/beans/PropertyDescriptor;

    aget-object v1, v1, v0

    .line 251
    :goto_1
    return-object v1

    .line 246
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected introspect()V
    .locals 4

    .prologue
    .line 76
    :try_start_0
    iget-object v2, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v0

    .line 77
    .local v0, "bi":Ljava/beans/BeanInfo;
    invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/config/PropertySetter;->props:[Ljava/beans/PropertyDescriptor;
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "bi":Ljava/beans/BeanInfo;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 79
    .local v1, "ex":Ljava/beans/IntrospectionException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to introspect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 80
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/beans/PropertyDescriptor;

    iput-object v2, p0, Lorg/apache/log4j/config/PropertySetter;->props:[Ljava/beans/PropertyDescriptor;

    goto :goto_0
.end method

.method public setProperties(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 6
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 111
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    const/16 v4, 0x2e

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gtz v4, :cond_0

    .line 125
    invoke-static {v1, p1}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    const-string v4, "layout"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lorg/apache/log4j/Appender;

    if-nez v4, :cond_0

    .line 130
    :cond_1
    invoke-virtual {p0, v1, v3}, Lorg/apache/log4j/config/PropertySetter;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 134
    return-void
.end method

.method public setProperty(Ljava/beans/PropertyDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "prop"    # Ljava/beans/PropertyDescriptor;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/log4j/config/PropertySetterException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const-string v10, "]."

    const-string v9, "Conversion to type ["

    .line 184
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    .line 185
    .local v3, "setter":Ljava/lang/reflect/Method;
    if-nez v3, :cond_0

    .line 186
    new-instance v5, Lorg/apache/log4j/config/PropertySetterException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "No setter for property ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/log4j/config/PropertySetterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 188
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 189
    .local v2, "paramTypes":[Ljava/lang/Class;
    array-length v5, v2

    if-eq v5, v6, :cond_1

    .line 190
    new-instance v5, Lorg/apache/log4j/config/PropertySetterException;

    const-string v6, "#params for setter != 1"

    invoke-direct {v5, v6}, Lorg/apache/log4j/config/PropertySetterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 195
    :cond_1
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v2, v5

    invoke-virtual {p0, p3, v5}, Lorg/apache/log4j/config/PropertySetter;->convertArg(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    .local v0, "arg":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 201
    new-instance v5, Lorg/apache/log4j/config/PropertySetterException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Conversion to type ["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    aget-object v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "] failed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/log4j/config/PropertySetterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 196
    .end local v0    # "arg":Ljava/lang/Object;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 197
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Lorg/apache/log4j/config/PropertySetterException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Conversion to type ["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    aget-object v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "] failed. Reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/log4j/config/PropertySetterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 204
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Setting property ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "] to ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 206
    :try_start_1
    iget-object v5, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    return-void

    .line 207
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 208
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v5, Lorg/apache/log4j/config/PropertySetterException;

    invoke-direct {v5, v1}, Lorg/apache/log4j/config/PropertySetterException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 153
    if-nez p2, :cond_0

    .line 171
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {p1}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Lorg/apache/log4j/config/PropertySetter;->getPropertyDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 160
    .local v1, "prop":Ljava/beans/PropertyDescriptor;
    if-nez v1, :cond_1

    .line 161
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No such property ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/log4j/config/PropertySetter;->setProperty(Ljava/beans/PropertyDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/log4j/config/PropertySetterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "ex":Lorg/apache/log4j/config/PropertySetterException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to set property ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] to value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/log4j/config/PropertySetterException;->rootCause:Ljava/lang/Throwable;

    invoke-static {v2, v3}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
