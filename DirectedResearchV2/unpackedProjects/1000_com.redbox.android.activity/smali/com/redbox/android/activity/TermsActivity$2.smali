.class Lcom/redbox/android/activity/TermsActivity$2;
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

.field private final synthetic val$rbTermsBtn:Landroid/widget/ImageButton;

.field private final synthetic val$resTermsBtn:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/TermsActivity;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/TermsActivity$2;->this$0:Lcom/redbox/android/activity/TermsActivity;

    iput-object p2, p0, Lcom/redbox/android/activity/TermsActivity$2;->val$rbTermsBtn:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/redbox/android/activity/TermsActivity$2;->val$resTermsBtn:Landroid/widget/ImageButton;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/redbox/android/activity/TermsActivity$2;->val$rbTermsBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 58
    iget-object v0, p0, Lcom/redbox/android/activity/TermsActivity$2;->val$resTermsBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 59
    iget-object v0, p0, Lcom/redbox/android/activity/TermsActivity$2;->this$0:Lcom/redbox/android/activity/TermsActivity;

    const v1, 0x7f070092

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/redbox/android/activity/TermsActivity$2;->this$0:Lcom/redbox/android/activity/TermsActivity;

    const v1, 0x7f070091

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    return-void
.end method
