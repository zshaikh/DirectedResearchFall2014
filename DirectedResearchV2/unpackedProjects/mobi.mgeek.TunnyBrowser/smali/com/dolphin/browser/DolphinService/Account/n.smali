.class public Lcom/dolphin/browser/DolphinService/Account/n;
.super Ljava/lang/Object;
.source "SocialLoginRecord.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Lcom/dolphin/browser/DolphinService/Account/o;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/dolphin/browser/DolphinService/Account/o;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/dolphin/browser/DolphinService/Account/n;->b:I

    .line 20
    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/Account/n;->c:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/dolphin/browser/DolphinService/Account/n;->d:Lcom/dolphin/browser/DolphinService/Account/o;

    .line 22
    invoke-static {p1}, Lcom/dolphin/browser/DolphinService/Account/n;->a(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/DolphinService/Account/n;->a:I

    .line 23
    return-void
.end method

.method private static a(I)I
    .locals 2

    .prologue
    .line 64
    packed-switch p0, :pswitch_data_0

    .line 77
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong login type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :pswitch_1
    const/16 v0, 0xbb8

    .line 74
    :goto_0
    return v0

    .line 68
    :pswitch_2
    const/16 v0, 0x1388

    goto :goto_0

    .line 70
    :pswitch_3
    const/16 v0, 0xfa0

    goto :goto_0

    .line 72
    :pswitch_4
    const/16 v0, 0x1770

    goto :goto_0

    .line 74
    :pswitch_5
    const/16 v0, 0x3e8

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/Account/n;
    .locals 4

    .prologue
    .line 46
    const-string v0, "login_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 47
    const-string v1, "login_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string v2, "info"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 49
    invoke-static {v2}, Lcom/dolphin/browser/DolphinService/Account/o;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/Account/o;

    move-result-object v2

    .line 51
    new-instance v3, Lcom/dolphin/browser/DolphinService/Account/n;

    invoke-direct {v3, v0, v1, v2}, Lcom/dolphin/browser/DolphinService/Account/n;-><init>(ILjava/lang/String;Lcom/dolphin/browser/DolphinService/Account/o;)V

    return-object v3
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 56
    const-string v1, "login_type"

    iget v2, p0, Lcom/dolphin/browser/DolphinService/Account/n;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    const-string v1, "login_id"

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/Account/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v1, "info"

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/Account/n;->d:Lcom/dolphin/browser/DolphinService/Account/o;

    invoke-virtual {v2}, Lcom/dolphin/browser/DolphinService/Account/o;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 82
    instance-of v1, p1, Lcom/dolphin/browser/DolphinService/Account/n;

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    check-cast p1, Lcom/dolphin/browser/DolphinService/Account/n;

    .line 88
    iget v1, p0, Lcom/dolphin/browser/DolphinService/Account/n;->b:I

    iget v2, p1, Lcom/dolphin/browser/DolphinService/Account/n;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/dolphin/browser/DolphinService/Account/n;->b:I

    return v0
.end method
