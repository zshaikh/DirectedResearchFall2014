.class public Lcom/dolphin/browser/push/a/d;
.super Lcom/dolphin/browser/push/a/a;
.source "TextMessageEntity.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/dolphin/browser/push/a/a;-><init>()V

    .line 19
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/push/a/d;->a:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/dolphin/browser/push/a/d;->a:Ljava/lang/String;

    return-object v0
.end method
