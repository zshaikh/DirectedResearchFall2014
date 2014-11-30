.class Lcom/dolphin/browser/i/a/b;
.super Lcom/f/a/a/o;
.source "WebServiceClient.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/i/a/c;

.field final synthetic b:Lcom/dolphin/browser/i/a/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/i/a/a;Lcom/dolphin/browser/i/a/c;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dolphin/browser/i/a/b;->b:Lcom/dolphin/browser/i/a/a;

    iput-object p2, p0, Lcom/dolphin/browser/i/a/b;->a:Lcom/dolphin/browser/i/a/c;

    invoke-direct {p0}, Lcom/f/a/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    if-eqz p2, :cond_3

    .line 56
    array-length v3, p2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, p2, v2

    .line 57
    const-string v4, "Last-Modified"

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    :goto_1
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/dolphin/browser/i/a/b;->b:Lcom/dolphin/browser/i/a/a;

    invoke-static {v1}, Lcom/dolphin/browser/i/a/a;->a(Lcom/dolphin/browser/i/a/a;)Lcom/dolphin/browser/i/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/i/c;->a(Ljava/lang/String;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/i/a/b;->a:Lcom/dolphin/browser/i/a/c;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/i/a/b;->a:Lcom/dolphin/browser/i/a/c;

    invoke-interface {v0, p3}, Lcom/dolphin/browser/i/a/c;->a(Lorg/json/JSONObject;)V

    .line 74
    :cond_1
    return-void

    .line 56
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
