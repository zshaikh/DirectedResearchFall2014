.class Lmobi/mgeek/util/CrashReporter/p;
.super Lmobi/mgeek/util/CrashReporter/s;
.source "DolphinWebkitBugReporter.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/util/CrashReporter/t;

.field final synthetic b:Lmobi/mgeek/util/CrashReporter/o;


# direct methods
.method constructor <init>(Lmobi/mgeek/util/CrashReporter/o;Ljava/lang/String;Ljava/lang/String;Lmobi/mgeek/util/CrashReporter/t;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lmobi/mgeek/util/CrashReporter/p;->b:Lmobi/mgeek/util/CrashReporter/o;

    iput-object p4, p0, Lmobi/mgeek/util/CrashReporter/p;->a:Lmobi/mgeek/util/CrashReporter/t;

    invoke-direct {p0, p1, p2, p3}, Lmobi/mgeek/util/CrashReporter/s;-><init>(Lmobi/mgeek/util/CrashReporter/o;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/p;->a:Lmobi/mgeek/util/CrashReporter/t;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/p;->a:Lmobi/mgeek/util/CrashReporter/t;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lmobi/mgeek/util/CrashReporter/t;->a(Z)V

    .line 191
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 184
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmobi/mgeek/util/CrashReporter/p;->a(Ljava/lang/Boolean;)V

    return-void
.end method
