.class public Lcom/dolphin/browser/push/ActionPushDialogActivity;
.super Landroid/app/Activity;
.source "ActionPushDialogActivity.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Intent;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->a:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/push/ActionPushDialogActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/high16 v5, 0x10000000

    .line 52
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->finish()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v1, "action_content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->b:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->finish()V

    goto :goto_0

    .line 63
    :cond_2
    const-string v1, "push_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->a:I

    .line 64
    iget v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 65
    const-string v0, "sms:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->c:Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->c:Landroid/content/Intent;

    const-string v1, "sms_body"

    iget-object v2, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->c:Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    sget v0, Lcom/dolphin/browser/core/R$string;->action_text_title:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->d:Ljava/lang/CharSequence;

    .line 70
    sget v0, Lcom/dolphin/browser/core/R$string;->push_action_sms:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->e:Ljava/lang/CharSequence;

    .line 86
    :goto_1
    invoke-direct {p0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->b()V

    .line 87
    invoke-static {p0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-static {p0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 71
    :cond_3
    iget v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->a:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_5

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->b:Ljava/lang/String;

    const-string v1, ",|\\s|\\(|\\)|-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->finish()V

    goto :goto_0

    .line 78
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->c:Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->c:Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    sget v0, Lcom/dolphin/browser/core/R$string;->action_number_title:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->d:Ljava/lang/CharSequence;

    .line 81
    sget v0, Lcom/dolphin/browser/core/R$string;->push_action_call:I

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->e:Ljava/lang/CharSequence;

    goto :goto_1

    .line 83
    :cond_5
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->finish()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/push/ActionPushDialogActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 107
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->c:Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    if-nez p0, :cond_0

    move v0, v1

    .line 179
    :goto_0
    return v0

    .line 174
    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 175
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 179
    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/push/ActionPushDialogActivity;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->a:I

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 126
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 129
    iget-object v1, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 130
    sget v1, Lcom/dolphin/browser/core/R$string;->push_action_copy:I

    new-instance v2, Lcom/dolphin/browser/push/a;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/push/a;-><init>(Lcom/dolphin/browser/push/ActionPushDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    invoke-direct {p0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->e:Ljava/lang/CharSequence;

    new-instance v2, Lcom/dolphin/browser/push/b;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/push/b;-><init>(Lcom/dolphin/browser/push/ActionPushDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 157
    new-instance v1, Lcom/dolphin/browser/push/c;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/push/c;-><init>(Lcom/dolphin/browser/push/ActionPushDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 166
    iput-object v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->f:Landroid/app/AlertDialog;

    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->f:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 168
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 184
    invoke-static {p0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 187
    const v1, 0x3000001a

    const-string v2, "ActionPushDialogActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 191
    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 193
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/push/ActionPushDialogActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->c:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 47
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->a(Landroid/content/Intent;)V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->f:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/push/ActionPushDialogActivity;->f:Landroid/app/AlertDialog;

    .line 97
    return-void
.end method
