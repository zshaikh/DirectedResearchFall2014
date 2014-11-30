.class public Lmobi/mgeek/TunnyBrowser/cv;
.super Ljava/lang/Object;
.source "CrashReportFactoryImpl.java"

# interfaces
.implements Lmobi/mgeek/util/CrashReporter/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lmobi/mgeek/util/CrashReporter/c;
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/cs;->getInstance()Lmobi/mgeek/TunnyBrowser/cs;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/cs;->a()Lmobi/mgeek/util/CrashReporter/c;

    move-result-object v0

    return-object v0
.end method

.method public b()Lmobi/mgeek/util/CrashReporter/d;
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/cs;->getInstance()Lmobi/mgeek/TunnyBrowser/cs;

    move-result-object v0

    return-object v0
.end method
