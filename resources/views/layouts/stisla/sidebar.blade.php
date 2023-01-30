<div class="main-sidebar">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="index.html"><p>BPSDM<br>PROVINSI SUMATERA BARAT</p></a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="index.html">BPSDM</a>
        </div>
        <ul class="sidebar-menu">
            <li class="menu-header">Dashboard</li>
            <li class="nav-item dropdown {{ Request::segment(2) === 'dashboard' ? 'active' : '' }}">
                <a href="{{ route('home') }}" class="nav-link"><i class="fas fa-fire"></i><span>Dashboard</span></a>
            </li>
            <li class="menu-header">Data</li>
            <li class="nav-item dropdown {{ Request::segment(2) === 'arsip' ? 'active' : '' }}">
                <a href="{{ route('arsip.index') }}" class="nav-link"><i class="fas fa-columns"></i> <span>File Arsip</span></a>
            </li>
            <li class="nav-item dropdown {{ Request::segment(2) === 'jenis' ? 'active' : '' }}">
                <a class="nav-link" href="{{ route('jenis.index') }}"><i class="far fa-square"></i> <span>Jenis Arsip</span></a>
            </li>
            <li class="nav-item dropdown {{ Request::segment(2) === 'ruang' ? 'active' : '' }}">
                <a href="{{ route('ruang.index') }}" class="nav-link"><i class="fas fa-th"></i> <span>Ruang</span></a>
            </li>
            <li class="nav-item dropdown {{ Request::segment(2) === 'ruang' ? 'active' : '' }}">
                <a href="{{ route('ruang.index') }}" class="nav-link"><i class="fas fa-user"></i> <span>User</span > </a>
            </li>
        </ul>

        <div class="mt-4 mb-4 p-3 hide-sidebar-mini">
            <a class="btn btn-danger btn-lg btn-block btn-icon-split" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                <i class="fas fa-fw fa-sign-out-alt"></i>
                {{ __('Logout') }}
            </a>

            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
            </form>
        </div>
    </aside>
</div>