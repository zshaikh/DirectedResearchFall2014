.class Lam/sunrise/android/calendar/ui/contactpicker/g;
.super Ljava/lang/Object;
.source "ContactPickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/contactpicker/f;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/contactpicker/f;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/contactpicker/g;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/g;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->a(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/g;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->b(Lam/sunrise/android/calendar/ui/contactpicker/f;)V

    .line 97
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 86
    if-ltz v1, :cond_2

    .line 87
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 93
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/g;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->a(Lam/sunrise/android/calendar/ui/contactpicker/f;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/g;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->b(Lam/sunrise/android/calendar/ui/contactpicker/f;)V

    goto :goto_0
.end method
