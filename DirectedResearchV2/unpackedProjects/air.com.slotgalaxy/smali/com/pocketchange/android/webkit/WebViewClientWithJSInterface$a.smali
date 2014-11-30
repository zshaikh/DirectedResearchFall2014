.class Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-string v3, "native://"

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->c:I

    .line 106
    const-string v0, "native://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] missing native method prefix ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "native://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->a:Ljava/lang/String;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$1;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final c()I
    .locals 3

    .prologue
    .line 155
    iget v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->c:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->a:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-static {}, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iput v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->c:I

    .line 158
    :cond_0
    iget v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->c:I

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->c()I

    move-result v0

    .line 115
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->b:Ljava/lang/String;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->b:Ljava/lang/String;

    return-object v0

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->a()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->d:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->c()I

    move-result v0

    .line 127
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 128
    new-array v0, v4, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->d:[Ljava/lang/Object;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->d:[Ljava/lang/Object;

    return-object v0

    .line 132
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 140
    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->d:[Ljava/lang/Object;

    move v3, v4

    .line 141
    :goto_0
    if-ge v3, v2, :cond_0

    .line 142
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 143
    iget-object v5, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->d:[Ljava/lang/Object;

    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v4, v6, :cond_2

    const/4 v4, 0x0

    :cond_2
    aput-object v4, v5, v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 135
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 145
    :catch_1
    move-exception v1

    .line 146
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed arguments string ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
