.class Lcom/redbox/android/activity/TermsActivity$1;
.super Ljava/lang/Object;
.source "TermsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/TermsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/TermsActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/TermsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/TermsActivity$1;->this$0:Lcom/redbox/android/activity/TermsActivity;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/redbox/android/activity/TermsActivity$1;->this$0:Lcom/redbox/android/activity/TermsActivity;

    invoke-virtual {v0}, Lcom/redbox/android/activity/TermsActivity;->finish()V

    .line 40
    return-void
.end method
