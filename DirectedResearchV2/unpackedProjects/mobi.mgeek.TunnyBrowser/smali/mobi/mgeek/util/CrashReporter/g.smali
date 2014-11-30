.class Lmobi/mgeek/util/CrashReporter/g;
.super Ljava/lang/Object;
.source "CrashReportDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;


# direct methods
.method constructor <init>(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lmobi/mgeek/util/CrashReporter/g;->a:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/g;->a:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    invoke-static {v0}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->c(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)Lmobi/mgeek/util/CrashReporter/d;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/util/CrashReporter/d;->g()V

    .line 194
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/g;->a:Lmobi/mgeek/util/CrashReporter/CrashReportDialog;

    invoke-static {v0}, Lmobi/mgeek/util/CrashReporter/CrashReportDialog;->a(Lmobi/mgeek/util/CrashReporter/CrashReportDialog;)V

    .line 195
    return-void
.end method
