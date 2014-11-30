.class Lcom/dolphin/browser/pagedrop/activity/k;
.super Ljava/lang/Object;
.source "PagedropNameSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic b:Z

.field final synthetic c:Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;Z)V
    .locals 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/activity/k;->c:Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;

    iput-boolean p2, p0, Lcom/dolphin/browser/pagedrop/activity/k;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/k;->c:Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/k;->a:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-boolean v0, p0, Lcom/dolphin/browser/pagedrop/activity/k;->b:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/k;->a:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/k;->a:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/k;->c:Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;

    invoke-static {v1}, Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;->a(Lcom/dolphin/browser/pagedrop/activity/PagedropNameSettingActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
