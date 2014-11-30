.class public abstract Lmobi/mgeek/TunnyBrowser/i;
.super Ljava/lang/Object;
.source "BackupRestoreDialogHelper.java"


# static fields
.field protected static final a:Lcom/dolphin/browser/util/bx;


# instance fields
.field protected b:Landroid/content/Context;

.field protected c:Landroid/content/res/Resources;

.field private final d:Ljava/text/DateFormat;

.field private e:Landroid/widget/Toast;

.field private f:Landroid/app/ProgressDialog;

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/dolphin/browser/util/bx;

    const/4 v1, 0x1

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/util/bx;-><init>(II)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/i;->a:Lcom/dolphin/browser/util/bx;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {v0, v0}, Ljava/text/SimpleDateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/i;->d:Ljava/text/DateFormat;

    .line 136
    new-instance v0, Lmobi/mgeek/TunnyBrowser/j;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/j;-><init>(Lmobi/mgeek/TunnyBrowser/i;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/i;->g:Landroid/os/Handler;

    .line 57
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/i;->b:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/i;->c:Landroid/content/res/Resources;

    .line 59
    return-void
.end method

.method public static a(Landroid/content/Context;I)Lmobi/mgeek/TunnyBrowser/i;
    .locals 1

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Lmobi/mgeek/TunnyBrowser/k;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/k;-><init>(Landroid/content/Context;)V

    .line 72
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmobi/mgeek/TunnyBrowser/n;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/n;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/i;->b()Landroid/view/View;

    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/i;->a(Landroid/view/View;)V

    .line 65
    return-object v0
.end method

.method protected a(I)V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/i;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/i;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/i;->e:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/i;->e:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 112
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/i;->e:Landroid/widget/Toast;

    .line 114
    return-void
.end method

.method protected a(II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 95
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/i;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/i;->f:Landroid/app/ProgressDialog;

    .line 99
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 79
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->O()J

    move-result-wide v1

    .line 83
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 84
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/i;->c:Landroid/content/res/Resources;

    sget-object v5, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v5, 0x7f0e0343

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/i;->d:Ljava/text/DateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0180

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method protected a(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    const/16 v1, 0x3e8

    .line 117
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/i;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 121
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/i;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/i;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/i;->g:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 124
    return-void
.end method

.method protected abstract b()Landroid/view/View;
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/i;->f:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 103
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 129
    invoke-static {p1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 130
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
