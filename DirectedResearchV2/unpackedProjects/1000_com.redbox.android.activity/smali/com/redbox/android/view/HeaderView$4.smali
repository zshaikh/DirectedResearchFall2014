.class Lcom/redbox/android/view/HeaderView$4;
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

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/redbox/android/view/HeaderView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/view/HeaderView$4;->this$0:Lcom/redbox/android/view/HeaderView;

    iput-object p2, p0, Lcom/redbox/android/view/HeaderView$4;->val$context:Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/redbox/android/view/HeaderView$4;->val$context:Landroid/content/Context;

    const-class v2, Lcom/redbox/android/activity/TermsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/redbox/android/view/HeaderView$4;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method
