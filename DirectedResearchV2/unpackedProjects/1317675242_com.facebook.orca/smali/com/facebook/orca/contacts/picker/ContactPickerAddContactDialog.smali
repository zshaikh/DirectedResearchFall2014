.class Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;
.super Landroid/app/Dialog;
.source "ContactPickerAddContactDialog.java"


# instance fields
.field private final a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Listener;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/orca/users/UserIdentifier$IdentifierType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    .line 67
    iput-object p3, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->b:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->c:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, v0}, Lcom/google/common/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    const v1, 0x7f0a007b

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    sget-object v2, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->EMAIL:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v1, v2, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->b()Ljava/lang/String;

    move-result-object v1

    .line 124
    :goto_1
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->dismiss()V

    .line 126
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->d:Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Listener;

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->d:Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Listener;

    sget-object v3, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;->OK:Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Listener;->a(Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->a()V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    sget-object v1, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, v0}, Lcom/google/common/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/facebook/orca/contacts/data/EmailAddressUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 138
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 141
    const/4 v0, 0x0

    .line 143
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->d()V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, v0}, Lcom/google/common/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 151
    :try_start_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 152
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-object v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    const v1, 0x7f0a007d

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->dismiss()V

    .line 165
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->d:Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Listener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->d:Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Listener;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;->CANCEL:Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;

    invoke-virtual {v0, v1, v2, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Listener;->a(Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Listener;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->d:Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Listener;

    .line 176
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 73
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "Add Person"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->setContentView(I)V

    .line 78
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->e:Landroid/widget/EditText;

    .line 79
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->f:Landroid/widget/EditText;

    .line 80
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->g:Landroid/widget/EditText;

    .line 81
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->h:Landroid/widget/Button;

    .line 82
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->i:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->a:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    sget-object v1, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->EMAIL:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->h:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$1;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->i:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$2;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method
