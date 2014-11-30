.class public Lcom/facebook/orca/auth/EnterPhoneNumberActivity;
.super Lcom/facebook/orca/activity/OrcaFragmentActivity;
.source "EnterPhoneNumberActivity.java"


# static fields
.field private static B:Ljava/util/regex/Pattern;


# instance fields
.field private A:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

.field private n:Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;

.field private o:Landroid/telephony/TelephonyManager;

.field private p:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private q:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/Spinner;

.field private u:Landroid/widget/EditText;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 361
    const-string v0, "[+]?(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->B:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;-><init>()V

    .line 62
    const-string v0, "orca:EnterPhoneNumberActivity"

    iput-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->k:Ljava/lang/String;

    .line 543
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->g()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;Z)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->c(Z)V

    return-void
.end method

.method private a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 4
    .param p1    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 190
    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 192
    invoke-direct {p0, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->n:Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->a(Ljava/lang/String;)I

    move-result v0

    .line 194
    if-lez v0, :cond_1

    .line 196
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->t:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 197
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->n:Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->a(I)Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->s:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->p:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->e()Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->n:Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->a(Ljava/lang/String;)I

    move-result v0

    .line 210
    if-lez v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->t:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 212
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->n:Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->a(I)Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->s:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->h()V

    return-void
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1

    .prologue
    .line 389
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 392
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->y:Z

    return p1
.end method

.method private c()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 4

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->o:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-direct {p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->e()Ljava/lang/String;

    move-result-object v2

    .line 172
    if-eqz v1, :cond_0

    .line 174
    :try_start_0
    iget-object v3, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->p:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    :cond_0
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->e()Ljava/lang/String;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->p:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->p:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->j()V

    return-void
.end method

.method private c(Z)V
    .locals 4

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->i()I

    move-result v0

    .line 288
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->s:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 4

    .prologue
    .line 270
    if-lez p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->n:Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->a(I)Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;

    move-result-object v0

    .line 272
    invoke-direct {p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->i()I

    move-result v1

    iget v2, v0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;->c:I

    if-eq v1, v2, :cond_0

    .line 274
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->s:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 278
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->y:Z

    return v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->o:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    .line 250
    invoke-direct {p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->i()I

    move-result v0

    .line 251
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 252
    invoke-direct {p0, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->n:Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->a(Ljava/lang/String;)I

    move-result v0

    .line 254
    if-lez v0, :cond_1

    .line 255
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->t:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 256
    const/4 v0, 0x1

    .line 259
    :goto_0
    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->t:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 262
    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private g()V
    .locals 5

    .prologue
    const v4, 0x7f0a00ed

    .line 298
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->i()I

    move-result v0

    .line 304
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 305
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    const v1, 0x7f0a00eb

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    const v1, 0x7f0a00ec

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0

    .line 321
    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    iget-object v2, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->p:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-direct {p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 331
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->p:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v2, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 332
    :cond_3
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0

    .line 338
    :cond_4
    iget-object v2, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->p:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v1, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 340
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 341
    invoke-direct {p0, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    new-instance v3, Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;

    invoke-direct {v3, v0, v1}, Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v4, "requestSmsConfirmationCodeParams"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 345
    iget-object v3, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v4, "request_sms_confirmation_code"

    invoke-virtual {v3, v4, v2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 347
    iput-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->z:Ljava/lang/String;

    .line 348
    iput-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->A:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->q:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 353
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->k:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)V

    .line 354
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 355
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->g()Landroid/content/Intent;

    move-result-object v0

    .line 356
    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->startActivity(Landroid/content/Intent;)V

    .line 357
    invoke-virtual {p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->finish()V

    .line 359
    return-void
.end method

.method private i()I
    .locals 2

    .prologue
    .line 369
    sget-object v0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->B:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 373
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 378
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->q:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 379
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)V

    .line 380
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->m:Lcom/facebook/orca/prefs/PrefKey;

    iget-object v2, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)V

    .line 381
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->n:Lcom/facebook/orca/prefs/PrefKey;

    iget-object v2, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 385
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->g()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->startActivity(Landroid/content/Intent;)V

    .line 386
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->d()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 96
    const-class v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    iput-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    .line 97
    const-class v0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->n:Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;

    .line 98
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->o:Landroid/telephony/TelephonyManager;

    .line 99
    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    iput-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->p:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 100
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->q:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 101
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->r:Landroid/view/View;

    .line 102
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->s:Landroid/widget/EditText;

    .line 103
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->t:Landroid/widget/Spinner;

    .line 104
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->u:Landroid/widget/EditText;

    .line 105
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->v:Landroid/widget/Button;

    .line 106
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->w:Landroid/widget/Button;

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->t:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->n:Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->t:Landroid/widget/Spinner;

    new-instance v1, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryNameItemSelectedListener;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryNameItemSelectedListener;-><init>(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;Lcom/facebook/orca/auth/EnterPhoneNumberActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->s:Landroid/widget/EditText;

    new-instance v1, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeTextWatcher;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeTextWatcher;-><init>(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;Lcom/facebook/orca/auth/EnterPhoneNumberActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->s:Landroid/widget/EditText;

    new-instance v1, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$1;-><init>(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->v:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$2;-><init>(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->w:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$3;-><init>(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const-string v0, "requestSmsCodeOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$4;-><init>(Lcom/facebook/orca/auth/EnterPhoneNumberActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    const v2, 0x7f0a00ef

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 148
    invoke-direct {p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->c()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 149
    invoke-direct {p0, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 150
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->b(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->setContentView(I)V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragmentActivity;->onResume()V

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->m:Lcom/facebook/orca/activity/AuthenticatingActivityHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/AuthenticatingActivityHelper;->d()Landroid/content/Intent;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    invoke-virtual {p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity;->finish()V

    .line 160
    :cond_0
    return-void
.end method
