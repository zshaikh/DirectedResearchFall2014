.class Lam/sunrise/android/calendar/ui/contactpicker/i;
.super Ljava/lang/Object;
.source "ContactPickerFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/contactpicker/f;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/contactpicker/f;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 198
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->g(Lam/sunrise/android/calendar/ui/contactpicker/f;)V

    .line 199
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->b(Lam/sunrise/android/calendar/ui/contactpicker/f;)V

    goto :goto_0

    .line 203
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 205
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->g(Lam/sunrise/android/calendar/ui/contactpicker/f;)V

    .line 206
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->b(Lam/sunrise/android/calendar/ui/contactpicker/f;)V

    goto :goto_0

    .line 210
    :cond_4
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 211
    if-ltz v1, :cond_5

    .line 212
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 218
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->g(Lam/sunrise/android/calendar/ui/contactpicker/f;)V

    .line 219
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->b(Lam/sunrise/android/calendar/ui/contactpicker/f;)V

    goto :goto_0

    .line 223
    :cond_6
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/contactpicker/f;->g(Lam/sunrise/android/calendar/ui/contactpicker/f;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 226
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->e(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lam/sunrise/android/calendar/ui/contactpicker/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/a;->a([Lam/sunrise/android/calendar/api/models/datas/Contact;)V

    .line 227
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->c(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/contactpicker/f;->e(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lam/sunrise/android/calendar/ui/contactpicker/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/i;)V

    .line 230
    :cond_7
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->a(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/contactpicker/f;->h(Lam/sunrise/android/calendar/ui/contactpicker/f;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 231
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/contactpicker/f;->a(Lam/sunrise/android/calendar/ui/contactpicker/f;)Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/i;->a:Lam/sunrise/android/calendar/ui/contactpicker/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/contactpicker/f;->h(Lam/sunrise/android/calendar/ui/contactpicker/f;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lam/sunrise/android/calendar/ui/contactpicker/SRMultiAutoCompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method
