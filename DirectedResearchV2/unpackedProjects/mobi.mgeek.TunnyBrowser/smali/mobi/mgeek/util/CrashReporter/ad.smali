.class final Lmobi/mgeek/util/CrashReporter/ad;
.super Lcom/dolphin/browser/util/f;
.source "ReporterUtil.java"


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

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lmobi/mgeek/util/CrashReporter/ad;->a:Ljava/io/File;

    iput-object p2, p0, Lmobi/mgeek/util/CrashReporter/ad;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/mgeek/util/CrashReporter/ad;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/u;->a()Lmobi/mgeek/util/CrashReporter/u;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/ad;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Lmobi/mgeek/util/CrashReporter/u;->a(Ljava/io/File;)V

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/mgeek/util/CrashReporter/ad;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/ad;->b:Landroid/content/Context;

    sget v1, Lmobi/mgeek/util/CrashReporter/R$string;->crash_report_send_toast:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v1, "ReportUtil"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
