.class Lcom/dolphin/browser/message/model/b;
.super Ljava/lang/Object;
.source "Command.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/dolphin/browser/message/model/a;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/message/model/b;->a:Ljava/lang/String;

    .line 234
    const-string v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/message/model/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/dolphin/browser/message/model/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/message/model/b;->b:Lcom/dolphin/browser/message/model/a;

    .line 235
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/dolphin/browser/message/model/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/dolphin/browser/message/model/a;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/message/model/b;->b:Lcom/dolphin/browser/message/model/a;

    return-object v0
.end method
