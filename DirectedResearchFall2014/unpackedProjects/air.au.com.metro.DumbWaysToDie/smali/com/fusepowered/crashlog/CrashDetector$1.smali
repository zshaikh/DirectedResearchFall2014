.class Lcom/fusepowered/crashlog/CrashDetector$1;
.super Ljava/lang/Object;
.source "CrashDetector.java"

# interfaces
.implements Lcom/fusepowered/crashlog/senders/CrashSender$CrashSenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/crashlog/CrashDetector;->sendCachedCrashes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/crashlog/CrashDetector;


# direct methods
.method constructor <init>(Lcom/fusepowered/crashlog/CrashDetector;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/fusepowered/crashlog/CrashDetector$1;->this$0:Lcom/fusepowered/crashlog/CrashDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrashSendFinished(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    const-string v1, "CrashDetector"

    .line 112
    if-eqz p1, :cond_0

    .line 113
    const-string v0, "CrashDetector"

    const-string v0, "Cached crashes sent to server"

    invoke-static {v1, v0}, Lcom/fusepowered/logging/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/fusepowered/crashlog/CrashDetector$1;->this$0:Lcom/fusepowered/crashlog/CrashDetector;

    # getter for: Lcom/fusepowered/crashlog/CrashDetector;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/fusepowered/crashlog/CrashDetector;->access$000(Lcom/fusepowered/crashlog/CrashDetector;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/crashlog/handlers/CacheForStartupCrashHandler;->clearCachedCrashes(Landroid/content/Context;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v0, "CrashDetector"

    const-string v0, "Couldn\'t send crashes to server"

    invoke-static {v1, v0}, Lcom/fusepowered/logging/FuseLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
