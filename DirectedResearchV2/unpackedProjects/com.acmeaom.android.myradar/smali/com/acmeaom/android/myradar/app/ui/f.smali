.class public Lcom/acmeaom/android/myradar/app/ui/f;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 159
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 161
    const v2, 0x7f030005

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 163
    new-instance v3, Lcom/acmeaom/android/myradar/app/ui/i;

    invoke-direct {v3, p0, v5}, Lcom/acmeaom/android/myradar/app/ui/i;-><init>(Landroid/content/Context;Lcom/acmeaom/android/myradar/app/ui/g;)V

    .line 164
    const v0, 0x7f080016

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v3, v0}, Lcom/acmeaom/android/myradar/app/ui/i;->a(Lcom/acmeaom/android/myradar/app/ui/i;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 165
    const v0, 0x7f080019

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3, v0}, Lcom/acmeaom/android/myradar/app/ui/i;->a(Lcom/acmeaom/android/myradar/app/ui/i;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 166
    const v0, 0x7f080018

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3, v0}, Lcom/acmeaom/android/myradar/app/ui/i;->b(Lcom/acmeaom/android/myradar/app/ui/i;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 167
    const v0, 0x7f080017

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v3, v0}, Lcom/acmeaom/android/myradar/app/ui/i;->a(Lcom/acmeaom/android/myradar/app/ui/i;Landroid/widget/Button;)Landroid/widget/Button;

    .line 169
    const-string v0, "kFlightNumberKey"

    invoke-static {v0}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 171
    invoke-static {v3}, Lcom/acmeaom/android/myradar/app/ui/i;->b(Lcom/acmeaom/android/myradar/app/ui/i;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-static {v3}, Lcom/acmeaom/android/myradar/app/ui/i;->c(Lcom/acmeaom/android/myradar/app/ui/i;)V

    .line 175
    :cond_0
    invoke-static {v3}, Lcom/acmeaom/android/myradar/app/ui/i;->d(Lcom/acmeaom/android/myradar/app/ui/i;)Landroid/widget/Button;

    move-result-object v0

    new-instance v4, Lcom/acmeaom/android/myradar/app/ui/g;

    invoke-direct {v4, v3}, Lcom/acmeaom/android/myradar/app/ui/g;-><init>(Lcom/acmeaom/android/myradar/app/ui/i;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-static {v3}, Lcom/acmeaom/android/myradar/app/ui/i;->b(Lcom/acmeaom/android/myradar/app/ui/i;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v4, Lcom/acmeaom/android/myradar/app/ui/h;

    invoke-direct {v4, v3}, Lcom/acmeaom/android/myradar/app/ui/h;-><init>(Lcom/acmeaom/android/myradar/app/ui/i;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 194
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 195
    const-string v0, "Done"

    invoke-virtual {v1, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 197
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 199
    return-object v0
.end method
