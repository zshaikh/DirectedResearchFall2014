.class public Lcom/fusepowered/m2/m2l/util/HttpResponses;
.super Ljava/lang/Object;
.source "HttpResponses.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractBooleanHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;Z)Z
    .locals 2
    .parameter "response"
    .parameter "responseHeader"
    .parameter "defaultValue"

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, header:Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, p2

    .line 52
    :goto_0
    return v1

    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;
    .locals 2
    .parameter "response"
    .parameter "responseHeader"

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 44
    .local v0, header:Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static extractIntHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;I)I
    .locals 2
    .parameter "response"
    .parameter "responseHeader"
    .parameter "defaultValue"

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractIntegerHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v0

    .line 70
    .local v0, headerValue:Ljava/lang/Integer;
    if-nez v0, :cond_0

    move v1, p2

    .line 74
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static extractIntegerHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/Integer;
    .locals 5
    .parameter "response"
    .parameter "responseHeader"

    .prologue
    .line 56
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    .line 57
    .local v2, numberFormat:Ljava/text/NumberFormat;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 59
    invoke-static {p0, p1}, Lcom/fusepowered/m2/m2l/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/fusepowered/m2/m2l/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, headerValue:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v3

    .line 62
    .local v3, value:Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 64
    .end local v3           #value:Ljava/lang/Number;
    :goto_0
    return-object v4

    .line 63
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 64
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method
