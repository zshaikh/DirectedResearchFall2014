.class public Lcom/dolphin/browser/search/c/a;
.super Ljava/lang/Object;
.source "PidPromotion.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/search/c/a;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/dolphin/browser/search/c/a;

    invoke-direct {v0}, Lcom/dolphin/browser/search/c/a;-><init>()V

    .line 59
    const-string v1, "search_engine"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/c/a;->a:Ljava/lang/String;

    .line 60
    const-string v1, "pid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/c/a;->b:Ljava/lang/String;

    .line 61
    const-string v1, "pid_key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/c/a;->c:Ljava/lang/String;

    .line 62
    const-string v1, "search_entries"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/c/a;->d:[Ljava/lang/String;

    .line 66
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dolphin/browser/search/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lcom/dolphin/browser/search/c/a;->d:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/search/c/a;->d:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 48
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/search/c/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/search/c/a;->c:Ljava/lang/String;

    return-object v0
.end method
