.class Lmobi/mgeek/util/CrashReporter/q;
.super Ljava/lang/Object;
.source "DolphinWebkitBugReporter.java"

# interfaces
.implements Lmobi/mgeek/util/CrashReporter/t;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lmobi/mgeek/util/CrashReporter/o;


# direct methods
.method constructor <init>(Lmobi/mgeek/util/CrashReporter/o;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lmobi/mgeek/util/CrashReporter/q;->b:Lmobi/mgeek/util/CrashReporter/o;

    iput-object p2, p0, Lmobi/mgeek/util/CrashReporter/q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lmobi/mgeek/util/CrashReporter/q;->b:Lmobi/mgeek/util/CrashReporter/o;

    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/q;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lmobi/mgeek/util/CrashReporter/o;->a(Lmobi/mgeek/util/CrashReporter/o;Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method
