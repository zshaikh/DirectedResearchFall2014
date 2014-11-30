.class Lmobi/mgeek/util/CrashReporter/h;
.super Lcom/dolphin/browser/util/f;
.source "CrashReportDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;


# direct methods
.method constructor <init>(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lmobi/mgeek/util/CrashReporter/h;->b:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    iput-object p2, p0, Lmobi/mgeek/util/CrashReporter/h;->a:Ljava/io/File;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 232
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/mgeek/util/CrashReporter/h;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/u;->a()Lmobi/mgeek/util/CrashReporter/u;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/h;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Lmobi/mgeek/util/CrashReporter/u;->a(Ljava/io/File;)V

    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 232
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/mgeek/util/CrashReporter/h;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 5

    .prologue
    .line 244
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/h;->b:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/h;->b:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    sget v2, Lmobi/mgeek/util/CrashReporter/R$string;->crash_report_send_toast:I

    invoke-virtual {v1, v2}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 247
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/h;->b:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    invoke-static {v0}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->c(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)Lmobi/mgeek/util/CrashReporter/d;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/h;->b:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    invoke-static {v1}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->d(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobi/mgeek/util/CrashReporter/h;->b:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    invoke-static {v2}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->e(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmobi/mgeek/util/CrashReporter/h;->b:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    invoke-static {v3}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->f(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lmobi/mgeek/util/CrashReporter/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 248
    return-void
.end method
