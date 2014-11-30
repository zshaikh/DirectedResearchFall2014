.class public Lcom/dolphin/browser/DolphinService/Account/o;
.super Ljava/lang/Object;
.source "SocialLoginRecord.java"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/Account/o;->a:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/Account/o;
    .locals 2

    .prologue
    .line 34
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/dolphin/browser/DolphinService/Account/o;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/DolphinService/Account/o;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    const-string v1, "name"

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/Account/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    return-object v0
.end method
