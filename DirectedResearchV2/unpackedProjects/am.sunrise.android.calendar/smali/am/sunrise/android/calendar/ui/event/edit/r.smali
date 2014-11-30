.class Lam/sunrise/android/calendar/ui/event/edit/r;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/edit/c;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/edit/r;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/r;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->b(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    .line 327
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 318
    return-void
.end method
