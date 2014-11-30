.class public Lcom/dolphin/browser/promoted/m;
.super Ljava/lang/Object;
.source "PromotionLink.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Lcom/dolphin/browser/promoted/t;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/promoted/t;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/promoted/m;->f:I

    .line 52
    iput-object p1, p0, Lcom/dolphin/browser/promoted/m;->d:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/dolphin/browser/promoted/m;->e:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/dolphin/browser/promoted/m;->a:Ljava/lang/String;

    .line 55
    iput p4, p0, Lcom/dolphin/browser/promoted/m;->f:I

    .line 56
    iput-object p5, p0, Lcom/dolphin/browser/promoted/m;->c:Lcom/dolphin/browser/promoted/t;

    .line 57
    iput-object p6, p0, Lcom/dolphin/browser/promoted/m;->b:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/promoted/m;->f:I

    .line 35
    iput-object p1, p0, Lcom/dolphin/browser/promoted/m;->d:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/dolphin/browser/promoted/m;->e:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/dolphin/browser/promoted/m;->a:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/promoted/m;->c:Lcom/dolphin/browser/promoted/t;

    .line 39
    iput-object p4, p0, Lcom/dolphin/browser/promoted/m;->b:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/promoted/t;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/dolphin/browser/promoted/m;->c:Lcom/dolphin/browser/promoted/t;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/browser/promoted/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/promoted/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/dolphin/browser/promoted/m;->f:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/promoted/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 75
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/promoted/m;->d:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/dolphin/browser/promoted/m;

    iget-object v0, v0, Lcom/dolphin/browser/promoted/m;->d:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/promoted/m;->e:Ljava/lang/String;

    check-cast p1, Lcom/dolphin/browser/promoted/m;

    iget-object v2, p1, Lcom/dolphin/browser/promoted/m;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public f()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 92
    const-string v1, "Url"

    iget-object v2, p0, Lcom/dolphin/browser/promoted/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v1, "id"

    iget-object v2, p0, Lcom/dolphin/browser/promoted/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v1, "Title"

    iget-object v2, p0, Lcom/dolphin/browser/promoted/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v1, "last_modified"

    iget-object v2, p0, Lcom/dolphin/browser/promoted/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v1, "type"

    iget v2, p0, Lcom/dolphin/browser/promoted/m;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/promoted/m;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, -0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/promoted/m;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
