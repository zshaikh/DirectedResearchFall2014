.class Lam/sunrise/android/calendar/ui/settings/au;
.super Ljava/lang/Object;
.source "SettingsLinkiCloudFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/at;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/settings/at;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/au;->a:Lam/sunrise/android/calendar/ui/settings/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 81
    if-eqz p2, :cond_0

    const v1, 0x7f0b00fb

    if-ne v1, p2, :cond_2

    .line 83
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 84
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/au;->a:Lam/sunrise/android/calendar/ui/settings/at;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/settings/at;->a(Lam/sunrise/android/calendar/ui/settings/at;)V

    .line 88
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
