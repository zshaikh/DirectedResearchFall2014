.class Lcom/stuv/ane/w3i/W3iWrapper$1;
.super Ljava/lang/Object;
.source "W3iWrapper.java"

# interfaces
.implements Lcom/nativex/monetization/listeners/SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/w3i/W3iWrapper;->createSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createSessionCompleted(ZZLjava/lang/String;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "isOfferwallEnabled"    # Z
    .param p3, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 82
    return-void
.end method
