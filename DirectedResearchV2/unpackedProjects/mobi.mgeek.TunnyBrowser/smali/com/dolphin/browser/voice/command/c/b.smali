.class Lcom/dolphin/browser/voice/command/c/b;
.super Ljava/lang/Object;
.source "VoiceWebClient.java"

# interfaces
.implements Lcom/dolphin/browser/Network/m;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/voice/command/c/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/voice/command/c/a;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/c/b;->a:Lcom/dolphin/browser/voice/command/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-object p1

    .line 235
    :cond_0
    invoke-static {p1}, Lcom/dolphin/browser/voice/command/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/aa;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 237
    invoke-static {v0}, Lcom/dolphin/browser/util/cn;->a([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
