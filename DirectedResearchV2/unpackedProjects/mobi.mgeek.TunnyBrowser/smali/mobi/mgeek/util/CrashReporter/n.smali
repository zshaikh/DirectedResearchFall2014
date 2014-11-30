.class public Lmobi/mgeek/util/CrashReporter/n;
.super Ljava/lang/Object;
.source "CrashReportUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 6
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/u;->a()Lmobi/mgeek/util/CrashReporter/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmobi/mgeek/util/CrashReporter/u;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 7
    return-void
.end method
