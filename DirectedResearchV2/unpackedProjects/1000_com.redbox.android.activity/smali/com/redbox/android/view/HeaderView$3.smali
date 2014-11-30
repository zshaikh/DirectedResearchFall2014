.class Lcom/redbox/android/view/HeaderView$3;
.super Ljava/lang/Object;
.source "HeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$confirmlogoff:Landroid/app/AlertDialog$Builder;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/redbox/android/view/HeaderView;Landroid/app/AlertDialog$Builder;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/view/HeaderView$3;->this$0:Lcom/redbox/android/view/HeaderView;

    iput-object p2, p0, Lcom/redbox/android/view/HeaderView$3;->val$confirmlogoff:Landroid/app/AlertDialog$Builder;

    iput-object p3, p0, Lcom/redbox/android/view/HeaderView$3;->val$context:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    const-string v1, "CLICKED"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-boolean v1, Lcom/redbox/android/utils/RuntimeCache;->LOGGED_IN:Z

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/redbox/android/view/HeaderView$3;->val$confirmlogoff:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/redbox/android/view/HeaderView$3;->val$context:Landroid/content/Context;

    const-class v2, Lcom/redbox/android/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/redbox/android/view/HeaderView$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
