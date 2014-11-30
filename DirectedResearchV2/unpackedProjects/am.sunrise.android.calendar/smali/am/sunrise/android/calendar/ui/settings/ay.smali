.class Lam/sunrise/android/calendar/ui/settings/ay;
.super Ljava/lang/Object;
.source "SettingsLinkiCloudFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/settings/at;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/settings/at;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/ay;->a:Lam/sunrise/android/calendar/ui/settings/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/ay;->a:Lam/sunrise/android/calendar/ui/settings/at;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/settings/at;->d(Lam/sunrise/android/calendar/ui/settings/at;)V

    .line 230
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method
