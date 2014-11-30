.class Lcom/dolphin/browser/update/c;
.super Ljava/lang/Object;
.source "UpdateDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/update/a;

.field private b:Lcom/dolphin/browser/update/model/DialogButton;

.field private c:Lcom/dolphin/browser/update/d;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/update/a;Lcom/dolphin/browser/update/model/DialogButton;Lcom/dolphin/browser/update/d;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/dolphin/browser/update/c;->a:Lcom/dolphin/browser/update/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/dolphin/browser/update/c;->b:Lcom/dolphin/browser/update/model/DialogButton;

    .line 152
    iput-object p3, p0, Lcom/dolphin/browser/update/c;->c:Lcom/dolphin/browser/update/d;

    .line 153
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/update/c;->a:Lcom/dolphin/browser/update/a;

    invoke-static {v0}, Lcom/dolphin/browser/update/a;->a(Lcom/dolphin/browser/update/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "autoupdate"

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/update/c;->b:Lcom/dolphin/browser/update/model/DialogButton;

    invoke-virtual {v1}, Lcom/dolphin/browser/update/model/DialogButton;->b()Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string v2, ""

    .line 160
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "download"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/dolphin/browser/update/c;->a:Lcom/dolphin/browser/update/a;

    invoke-static {v1}, Lcom/dolphin/browser/update/a;->b(Lcom/dolphin/browser/update/a;)V

    .line 162
    const-string v1, "update"

    .line 169
    :goto_1
    const-string v2, "update services"

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/update/c;->a:Lcom/dolphin/browser/update/a;

    invoke-static {v0}, Lcom/dolphin/browser/update/a;->c(Lcom/dolphin/browser/update/a;)Lcom/dolphin/browser/update/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 180
    :cond_0
    return-void

    .line 157
    :cond_1
    const-string v0, "manualupdate"

    goto :goto_0

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/update/c;->c:Lcom/dolphin/browser/update/d;

    if-eqz v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/dolphin/browser/update/c;->c:Lcom/dolphin/browser/update/d;

    invoke-interface {v1, p1}, Lcom/dolphin/browser/update/d;->a(Landroid/content/DialogInterface;)V

    .line 167
    :cond_3
    const-string v1, "later"

    goto :goto_1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_2
.end method
