.class public Lcom/facebook/orca/debug/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"


# instance fields
.field private final a:J


# direct methods
.method private constructor <init>(Lcom/facebook/orca/debug/TraceEvent$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/facebook/orca/debug/ThreadTrace;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/orca/debug/ThreadTrace;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/debug/Tracer;->a:J

    .line 16
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/facebook/orca/debug/Tracer;

    sget-object v1, Lcom/facebook/orca/debug/TraceEvent$Type;->START:Lcom/facebook/orca/debug/TraceEvent$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/facebook/orca/debug/Tracer;-><init>(Lcom/facebook/orca/debug/TraceEvent$Type;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 39
    invoke-static {}, Lcom/facebook/orca/debug/ThreadTrace;->a()V

    .line 40
    return-void
.end method

.method public static a(J)V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/facebook/orca/debug/ThreadTrace;->a(J)V

    .line 36
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/facebook/orca/debug/ThreadTrace;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    invoke-virtual {v0}, Lcom/facebook/orca/debug/ThreadTrace;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0}, Lcom/facebook/orca/debug/ThreadTrace;->a(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 4

    .prologue
    .line 55
    sget-object v0, Lcom/facebook/orca/debug/ThreadTrace;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    iget-wide v1, p0, Lcom/facebook/orca/debug/Tracer;->a:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/debug/ThreadTrace;->a(JLjava/lang/Long;)J

    .line 56
    return-void
.end method

.method public c()J
    .locals 4

    .prologue
    .line 51
    sget-object v0, Lcom/facebook/orca/debug/ThreadTrace;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    iget-wide v1, p0, Lcom/facebook/orca/debug/Tracer;->a:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/debug/ThreadTrace;->a(JLjava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method
