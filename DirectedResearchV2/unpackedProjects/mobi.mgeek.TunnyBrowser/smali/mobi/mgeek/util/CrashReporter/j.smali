.class final Lmobi/mgeek/util/CrashReporter/j;
.super Ljava/lang/Thread;
.source "CrashReportDialog.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lmobi/mgeek/util/CrashReporter/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lmobi/mgeek/util/CrashReporter/j;->b:Landroid/content/Intent;

    iput-object p3, p0, Lmobi/mgeek/util/CrashReporter/j;->c:Landroid/content/Context;

    iput-boolean p4, p0, Lmobi/mgeek/util/CrashReporter/j;->d:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 293
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/u;->a()Lmobi/mgeek/util/CrashReporter/u;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/mgeek/util/CrashReporter/u;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/j;->b:Landroid/content/Intent;

    const-string v2, "REPORT_FILE"

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/j;->c:Landroid/content/Context;

    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/j;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 297
    iget-boolean v0, p0, Lmobi/mgeek/util/CrashReporter/j;->d:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->a()V

    .line 300
    :cond_0
    return-void
.end method
