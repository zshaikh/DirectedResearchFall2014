.class Lcom/redbox/android/activity/LandingActivity$4;
.super Ljava/lang/Object;
.source "LandingActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/LandingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/LandingActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/LandingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/LandingActivity$4;->this$0:Lcom/redbox/android/activity/LandingActivity;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 143
    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$4;->this$0:Lcom/redbox/android/activity/LandingActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/redbox/android/activity/LandingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 144
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/redbox/android/activity/LandingActivity$4;->this$0:Lcom/redbox/android/activity/LandingActivity;

    # getter for: Lcom/redbox/android/activity/LandingActivity;->searchedit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/redbox/android/activity/LandingActivity;->access$1(Lcom/redbox/android/activity/LandingActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 145
    return v3
.end method
