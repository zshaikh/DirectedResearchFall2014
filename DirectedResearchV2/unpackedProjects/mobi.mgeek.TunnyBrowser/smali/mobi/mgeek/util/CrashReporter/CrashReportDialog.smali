.class public Lmobi/mgeek/util/CrashReporter/CrashReportDialog;
.super Landroid/app/Activity;
.source "CrashReportDialog.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lmobi/mgeek/util/CrashReporter/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->b:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->c:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->d:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->c()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    const-string v1, "REPORT_EMAIL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v1, "CALL_STACK"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v1, "EXIT_KILL_PROCESS"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 285
    const-string v1, "REPORT_MESSAGE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 288
    new-instance v1, Lmobi/mgeek/util/CrashReporter/j;

    invoke-direct {v1, p2, v0, p0, p4}, Lmobi/mgeek/util/CrashReporter/j;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;Z)V

    invoke-virtual {v1}, Lmobi/mgeek/util/CrashReporter/j;->start()V

    .line 302
    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lmobi/mgeek/util/CrashReporter/h;

    invoke-direct {v0, p0, p1}, Lmobi/mgeek/util/CrashReporter/h;-><init>(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;Ljava/io/File;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 250
    return-void
.end method

.method static synthetic a(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->b()V

    return-void
.end method

.method static synthetic a(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->a(Ljava/io/File;)V

    return-void
.end method

.method static synthetic b(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->f:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->c()V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {p0}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->finish()V

    goto :goto_0
.end method

.method private b(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 254
    new-instance v0, Lmobi/mgeek/util/CrashReporter/i;

    invoke-direct {v0, p0, p1}, Lmobi/mgeek/util/CrashReporter/i;-><init>(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;Ljava/io/File;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Ljava/lang/Runnable;Lcom/dolphin/browser/util/t;)V

    .line 260
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->g:Lmobi/mgeek/util/CrashReporter/d;

    const/16 v1, 0x3ea

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/util/CrashReporter/d;->a(I[Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method static synthetic c(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)Lmobi/mgeek/util/CrashReporter/d;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->g:Lmobi/mgeek/util/CrashReporter/d;

    return-object v0
.end method

.method private static c()V
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 275
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 276
    return-void
.end method

.method static synthetic d(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/high16 v13, 0x3f800000

    const/16 v12, 0xa

    const/4 v11, -0x2

    const/4 v10, -0x1

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 64
    const-string v0, "REPORT_EMAIL"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->b:Ljava/lang/String;

    .line 65
    const-string v0, "EMAIL_SUBJECT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->c:Ljava/lang/String;

    .line 66
    const-string v0, "EMAIL_TEXT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->d:Ljava/lang/String;

    .line 67
    const-string v0, "EXIT_KILL_PROCESS"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->f:Z

    .line 68
    const-string v0, "CALL_STACK"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->e:Ljava/lang/String;

    .line 69
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->requestWindowFeature(I)Z

    .line 70
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/l;->b()Lmobi/mgeek/util/CrashReporter/d;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->g:Lmobi/mgeek/util/CrashReporter/d;

    .line 71
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/l;->a()Lmobi/mgeek/util/CrashReporter/c;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Lmobi/mgeek/util/CrashReporter/c;->a()Landroid/os/Bundle;

    move-result-object v3

    .line 74
    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->g:Lmobi/mgeek/util/CrashReporter/d;

    const/16 v4, 0x3eb

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->e:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Lmobi/mgeek/util/CrashReporter/d;->a(I[Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 78
    const-string v1, "RES_EMAIL_SUBJECT"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->c:Ljava/lang/String;

    .line 81
    :cond_0
    const-string v1, "RES_EMAIL_TEXT"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    iget-object v4, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->d:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 85
    iput-object v1, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->d:Ljava/lang/String;

    .line 88
    :cond_1
    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 89
    invoke-interface {v0}, Lmobi/mgeek/util/CrashReporter/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->b:Ljava/lang/String;

    .line 92
    :cond_2
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 93
    invoke-virtual {p0}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->finish()V

    .line 228
    :cond_3
    :goto_0
    return-void

    .line 98
    :cond_4
    const-string v0, "REPORT_FILE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_5

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 106
    :goto_1
    if-nez v1, :cond_6

    .line 107
    const-string v0, "CrashReportDialog"

    const-string v1, "reportFile is null"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->finish()V

    goto :goto_0

    .line 103
    :cond_5
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/u;->a()Lmobi/mgeek/util/CrashReporter/u;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/mgeek/util/CrashReporter/u;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 112
    :cond_6
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->g:Lmobi/mgeek/util/CrashReporter/d;

    invoke-virtual {v0, v1}, Lmobi/mgeek/util/CrashReporter/d;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 113
    invoke-direct {p0, v1}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->b(Ljava/io/File;)V

    .line 114
    const-string v0, "CrashReportDialog"

    const-string v1, "send report without show dialog"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->finish()V

    goto :goto_0

    .line 119
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 120
    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 121
    const-string v0, "CrashReportDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportFile size is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    invoke-virtual {v5, v12, v12, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 126
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-static {v12}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    .line 134
    invoke-virtual {v7, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 136
    const-string v0, "REPORT_MESSAGE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    if-nez v0, :cond_8

    .line 138
    const-string v0, "RES_DIALOG_TEXT"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_8
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v6, v7, v10, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 144
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 145
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v0, v4, v12, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 150
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 151
    const-string v6, "RES_BUTTON_CANCEL"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 152
    new-instance v6, Lmobi/mgeek/util/CrashReporter/e;

    invoke-direct {v6, p0}, Lmobi/mgeek/util/CrashReporter/e;-><init>(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 165
    const-string v6, "RES_BUTTON_REPORT"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 166
    new-instance v6, Lmobi/mgeek/util/CrashReporter/f;

    invoke-direct {v6, p0, v1}, Lmobi/mgeek/util/CrashReporter/f;-><init>(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;Ljava/io/File;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    const-string v4, "RES_BUTTON_RESTART"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_9

    .line 187
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 188
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 189
    new-instance v4, Lmobi/mgeek/util/CrashReporter/g;

    invoke-direct {v4, p0}, Lmobi/mgeek/util/CrashReporter/g;-><init>(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)V

    invoke-virtual {v6, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    :cond_9
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {p0, v5}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->setContentView(Landroid/view/View;)V

    .line 207
    const-string v0, "REPORT_TITLE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    if-nez v0, :cond_a

    .line 209
    const-string v0, "RES_DIALOG_TITLE"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_a
    invoke-virtual {p0, v0}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    const-string v0, "RES_DIALOG_ICON"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 214
    if-eqz v0, :cond_b

    .line 215
    invoke-virtual {p0}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 222
    :goto_2
    sget-object v0, Lmobi/mgeek/util/CrashReporter/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    sget-object v0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->a:Ljava/lang/String;

    const-string v2, "DolphinAutoTestBegin"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget-object v0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Dolphin_Report_File_Path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sget-object v0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->a:Ljava/lang/String;

    const-string v1, "DolphinAutoTestEnd"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v0, Lmobi/mgeek/util/CrashReporter/a;

    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lmobi/mgeek/util/CrashReporter/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_b
    invoke-virtual {p0}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x3

    const v3, 0x1080027

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    goto :goto_2
.end method
