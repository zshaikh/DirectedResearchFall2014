.class Lcom/AdX/tag/AdXConnect$1;
.super Ljava/lang/Object;
.source "AdXConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AdX/tag/AdXConnect;->getAdXConnectInstance(Landroid/content/Context;ZI)Lcom/AdX/tag/AdXConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$isUpdate:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect$1;->val$ctx:Landroid/content/Context;

    iput p2, p0, Lcom/AdX/tag/AdXConnect$1;->val$isUpdate:I

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 179
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 180
    sget-boolean v0, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AdXAppTracker"

    const-string v1, "Looper 10 seconds is up sending to AdX"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    # getter for: Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;
    invoke-static {}, Lcom/AdX/tag/AdXConnect;->access$4()Lcom/AdX/tag/AdXURLConnection;

    move-result-object v0

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Lcom/AdX/tag/AdXURLConnection;

    invoke-direct {v0}, Lcom/AdX/tag/AdXURLConnection;-><init>()V

    invoke-static {v0}, Lcom/AdX/tag/AdXConnect;->access$5(Lcom/AdX/tag/AdXURLConnection;)V

    .line 184
    :cond_1
    # getter for: Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;
    invoke-static {}, Lcom/AdX/tag/AdXConnect;->access$6()Lcom/AdX/tag/AdXConnect;

    move-result-object v0

    if-nez v0, :cond_2

    .line 185
    new-instance v0, Lcom/AdX/tag/AdXConnect;

    iget-object v1, p0, Lcom/AdX/tag/AdXConnect$1;->val$ctx:Landroid/content/Context;

    iget v2, p0, Lcom/AdX/tag/AdXConnect$1;->val$isUpdate:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/AdX/tag/AdXConnect;-><init>(Landroid/content/Context;ILcom/AdX/tag/AdXConnect;)V

    invoke-static {v0}, Lcom/AdX/tag/AdXConnect;->access$8(Lcom/AdX/tag/AdXConnect;)V

    .line 186
    :cond_2
    return-void
.end method
