.class Lmobi/mgeek/util/CrashReporter/f;
.super Ljava/lang/Object;
.source "CrashReportDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;


# direct methods
.method constructor <init>(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lmobi/mgeek/util/CrashReporter/f;->b:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    iput-object p2, p0, Lmobi/mgeek/util/CrashReporter/f;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 172
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/f;->b:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/f;->a:Ljava/io/File;

    invoke-static {v0, v1}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->a(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;Ljava/io/File;)V

    .line 174
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/f;->b:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    invoke-static {v0}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->c(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)Lmobi/mgeek/util/CrashReporter/d;

    move-result-object v0

    const/16 v1, 0x3ea

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmobi/mgeek/util/CrashReporter/f;->b:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    invoke-static {v4}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->b(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/util/CrashReporter/d;->a(I[Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/f;->b:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    invoke-virtual {v0}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->finish()V

    .line 178
    return-void
.end method
