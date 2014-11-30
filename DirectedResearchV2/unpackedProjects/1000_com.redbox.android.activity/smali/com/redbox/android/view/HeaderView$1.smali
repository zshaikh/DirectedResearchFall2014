.class Lcom/redbox/android/view/HeaderView$1;
.super Ljava/lang/Object;
.source "HeaderView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/view/HeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/view/HeaderView;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/redbox/android/view/HeaderView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/view/HeaderView$1;->this$0:Lcom/redbox/android/view/HeaderView;

    iput-object p2, p0, Lcom/redbox/android/view/HeaderView$1;->val$context:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/view/HeaderView$1;)Lcom/redbox/android/view/HeaderView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/redbox/android/view/HeaderView$1;->this$0:Lcom/redbox/android/view/HeaderView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    sput-boolean v1, Lcom/redbox/android/utils/RuntimeCache;->LOGGED_IN:Z

    .line 44
    iget-object v0, p0, Lcom/redbox/android/view/HeaderView$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/redbox/android/adapter/LocalDataStore;->setLogInState(Z)V

    .line 45
    invoke-static {}, Lcom/redbox/android/controller/Controller;->getController()Lcom/redbox/android/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/controller/Controller;->getCookieStore()Lcom/redbox/android/adapter/RBCookieStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/adapter/RBCookieStore;->logOff()V

    .line 46
    invoke-static {}, Lcom/redbox/android/utils/RBHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/redbox/android/view/HeaderView$1$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/view/HeaderView$1$1;-><init>(Lcom/redbox/android/view/HeaderView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method
