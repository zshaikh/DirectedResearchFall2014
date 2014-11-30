.class Lmobi/mgeek/util/CrashReporter/i;
.super Ljava/lang/Object;
.source "CrashReportDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;


# direct methods
.method constructor <init>(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lmobi/mgeek/util/CrashReporter/i;->b:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    iput-object p2, p0, Lmobi/mgeek/util/CrashReporter/i;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/u;->a()Lmobi/mgeek/util/CrashReporter/u;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/i;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Lmobi/mgeek/util/CrashReporter/u;->a(Ljava/io/File;)V

    .line 257
    return-void
.end method
