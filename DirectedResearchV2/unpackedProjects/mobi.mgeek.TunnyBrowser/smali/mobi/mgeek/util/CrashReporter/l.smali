.class public Lmobi/mgeek/util/CrashReporter/l;
.super Ljava/lang/Object;
.source "CrashReportFactory.java"


# static fields
.field private static a:Lmobi/mgeek/util/CrashReporter/m;


# direct methods
.method public static a()Lmobi/mgeek/util/CrashReporter/c;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lmobi/mgeek/util/CrashReporter/l;->a:Lmobi/mgeek/util/CrashReporter/m;

    invoke-interface {v0}, Lmobi/mgeek/util/CrashReporter/m;->a()Lmobi/mgeek/util/CrashReporter/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lmobi/mgeek/util/CrashReporter/m;)V
    .locals 0

    .prologue
    .line 7
    sput-object p0, Lmobi/mgeek/util/CrashReporter/l;->a:Lmobi/mgeek/util/CrashReporter/m;

    .line 8
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/l;->c()V

    .line 9
    return-void
.end method

.method public static b()Lmobi/mgeek/util/CrashReporter/d;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lmobi/mgeek/util/CrashReporter/l;->a:Lmobi/mgeek/util/CrashReporter/m;

    invoke-interface {v0}, Lmobi/mgeek/util/CrashReporter/m;->b()Lmobi/mgeek/util/CrashReporter/d;

    move-result-object v0

    return-object v0
.end method

.method private static c()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lmobi/mgeek/util/CrashReporter/n;

    invoke-direct {v0}, Lmobi/mgeek/util/CrashReporter/n;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 13
    return-void
.end method
