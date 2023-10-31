<script lang="ts">
	import {
		Carousel,
		Navbar,
		NavBrand,
		NavLi,
		NavUl,
		NavHamburger,
		Label,
		Input,
		Textarea,
		Button
	} from 'flowbite-svelte';

	const armyImages = [
		{
			id: 0,
			imgurl: 'army/a1.svg'
		},
		{
			id: 1,
			imgurl: 'army/a2.svg'
		},
		{
			id: 2,
			imgurl: 'army/a3.svg'
		},
		{
			id: 3,
			imgurl: 'army/a4.svg'
		},
		{
			id: 4,
			imgurl: 'army/a5.svg'
		},
		{
			id: 5,
			imgurl: 'army/a6.svg'
		}
	];
	const miniImages = [
		{
			id: 0,
			imgurl: 'mini/m1.svg'
		},
		{
			id: 1,
			imgurl: 'mini/m2.svg'
		},
		{
			id: 2,
			imgurl: 'mini/m3.svg'
		},
		{
			id: 3,
			imgurl: 'mini/m4.svg'
		},
		{
			id: 4,
			imgurl: 'mini/m5.svg'
		},
		{
			id: 5,
			imgurl: 'mini/m6.svg'
		},
		{
			id: 6,
			imgurl: 'mini/m7.svg'
		},
		{
			id: 7,
			imgurl: 'mini/m8.svg'
		},
		{
			id: 8,
			imgurl: 'mini/m9.svg'
		},
	];
	const deereImages = [
		{
			id: 0,
			imgurl: 'deere/d1.svg'
		},
		{
			id: 1,
			imgurl: 'deere/d2.svg'
		},
		{
			id: 2,
			imgurl: 'deere/d3.svg'
		},
		{
			id: 3,
			imgurl: 'deere/d4.svg'
		},
		{
			id: 4,
			imgurl: 'deere/d5.svg'
		},
		{
			id: 5,
			imgurl: 'deere/d6.svg'
		},
		{
			id: 6,
			imgurl: 'deere/d7.svg'
		},
		{
			id: 7,
			imgurl: 'deere/d8.svg'
		},
		{
			id: 8,
			imgurl: 'deere/d9.svg'
		},
		{
			id: 9,
			imgurl: 'deere/d10.svg'
		},
		{
			id: 10,
			imgurl: 'deere/d11.svg'
		},
		{
			id: 11,
			imgurl: 'deere/d12.svg'
		},
		{
			id: 12,
			imgurl: 'deere/d13.svg'
		},
		{
			id: 13,
			imgurl: 'deere/d14.svg'
		},
		{
			id: 14,
			imgurl: 'deere/d15.svg'
		},
		{
			id: 15,
			imgurl: 'deere/d16.svg'
		},
		{
			id: 16,
			imgurl: 'deere/d17.svg'
		},
		{
			id: 17,
			imgurl: 'deere/d18.svg'
		},
		{
			id: 18,
			imgurl: 'deere/d19.svg'
		},
		{
			id: 19,
			imgurl: 'deere/d20.svg'
		},
		{
			id: 20,
			imgurl: 'deere/d21.svg'
		},
		{
			id: 21,
			imgurl: 'deere/d22.svg'
		},
		{
			id: 22,
			imgurl: 'deere/d23.svg'
		},
		{
			id: 23,
			imgurl: 'deere/d24.svg'
		},
		{
			id: 24,
			imgurl: 'deere/d25.svg'
		}
	];
</script>

<Navbar
	let:hidden
	let:toggle
	color="none"
	navClass="px-2 sm:px-4 py-2.5 w-full z-20 top-0 left-0 border-b border-gray-600 bg-gray-900"
>
	<NavBrand href="/">
		<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="white" class="w-6 h-6">
			<path
				d="M17.004 10.407c.138.435-.216.842-.672.842h-3.465a.75.75 0 01-.65-.375l-1.732-3c-.229-.396-.053-.907.393-1.004a5.252 5.252 0 016.126 3.537zM8.12 8.464c.307-.338.838-.235 1.066.16l1.732 3a.75.75 0 010 .75l-1.732 3.001c-.229.396-.76.498-1.067.16A5.231 5.231 0 016.75 12c0-1.362.519-2.603 1.37-3.536zM10.878 17.13c-.447-.097-.623-.608-.394-1.003l1.733-3.003a.75.75 0 01.65-.375h3.465c.457 0 .81.408.672.843a5.252 5.252 0 01-6.126 3.538z"
			/>
			<path
				fill-rule="evenodd"
				d="M21 12.75a.75.75 0 000-1.5h-.783a8.22 8.22 0 00-.237-1.357l.734-.267a.75.75 0 10-.513-1.41l-.735.268a8.24 8.24 0 00-.689-1.191l.6-.504a.75.75 0 10-.964-1.149l-.6.504a8.3 8.3 0 00-1.054-.885l.391-.678a.75.75 0 10-1.299-.75l-.39.677a8.188 8.188 0 00-1.295-.471l.136-.77a.75.75 0 00-1.477-.26l-.136.77a8.364 8.364 0 00-1.377 0l-.136-.77a.75.75 0 10-1.477.26l.136.77c-.448.121-.88.28-1.294.47l-.39-.676a.75.75 0 00-1.3.75l.392.678a8.29 8.29 0 00-1.054.885l-.6-.504a.75.75 0 00-.965 1.149l.6.503a8.243 8.243 0 00-.689 1.192L3.8 8.217a.75.75 0 10-.513 1.41l.735.267a8.222 8.222 0 00-.238 1.355h-.783a.75.75 0 000 1.5h.783c.042.464.122.917.238 1.356l-.735.268a.75.75 0 10.513 1.41l.735-.268c.197.417.428.816.69 1.192l-.6.504a.75.75 0 10.963 1.149l.601-.505c.326.323.679.62 1.054.885l-.392.68a.75.75 0 101.3.75l.39-.679c.414.192.847.35 1.294.471l-.136.771a.75.75 0 101.477.26l.137-.772a8.376 8.376 0 001.376 0l.136.773a.75.75 0 101.477-.26l-.136-.772a8.19 8.19 0 001.294-.47l.391.677a.75.75 0 101.3-.75l-.393-.679a8.282 8.282 0 001.054-.885l.601.504a.75.75 0 10.964-1.15l-.6-.503a8.24 8.24 0 00.69-1.191l.735.268a.75.75 0 10.512-1.41l-.734-.268c.115-.438.195-.892.237-1.356h.784zm-2.657-3.06a6.744 6.744 0 00-1.19-2.053 6.784 6.784 0 00-1.82-1.51A6.704 6.704 0 0012 5.25a6.801 6.801 0 00-1.225.111 6.7 6.7 0 00-2.15.792 6.784 6.784 0 00-2.952 3.489.758.758 0 01-.036.099A6.74 6.74 0 005.251 12a6.739 6.739 0 003.355 5.835l.01.006.01.005a6.706 6.706 0 002.203.802c.007 0 .014.002.021.004a6.792 6.792 0 002.301 0l.022-.004a6.707 6.707 0 002.228-.816 6.781 6.781 0 001.762-1.483l.009-.01.009-.012a6.744 6.744 0 001.18-2.064c.253-.708.39-1.47.39-2.264a6.74 6.74 0 00-.408-2.308z"
				clip-rule="evenodd"
			/>
		</svg>
		<span class="self-center whitespace-nowrap text-xl font-semibold dark:text-white pl-2">
			Wagner
		</span>
	</NavBrand>
	<NavHamburger on:click={toggle} />
	<NavUl {hidden}>
		<NavLi href="/" active={true}>Home</NavLi>
		<NavLi href="/resume.pdf" target="_blank">Resume</NavLi>
		<NavLi href="#contact">Contact</NavLi>
	</NavUl>
</Navbar>

<div class="bg-[url('/splash.png')] invert">
	<div class="backdrop-blur-sm py-14">
		<h1 class="text-black black:text-black text-5xl text-center font-bold">Chris Wagner</h1>
		<h2 class="text-black black:text-black text-2xl text-center">Industrial Designer</h2>
	</div>
</div>

<div class="flex flex-row-reverse px-2 py-16 flex-wrap justify-around bg-gray-800" id="overwatch">
	<div class="max-w-6xl mx-2 basis-1/2 grow" id="coupe">
		<Carousel
			images={armyImages}
			showCaptions={false}
			showThumbs={false}
			divClass="overflow-hidden relative h-auto rounded-lg"
			indicatorClass="w-3 h-3 rounded-full bg-gray-600 hover:bg-gray-900 opacity-60 hidden sm:inline"
		/>
		<p class="text-center text-white">Utilize the arrows to move through the slides</p>
	</div>
	<div class="basis-1/2 grow my-10 px-10 self-center">
		<h1 class="text-white text-left text-5xl font-bold mb-2">Manned Overwatch Vehicle</h1>
		<h2 class="text-white text-left text-3xl mb-8">Strength in Safety</h2>
		<p class="text-white text-left text-2xl mb-10">
			<b>STRONGHOLD</b> would be a Hydrogen powered vehicle, utilizing H2 Fuel Cells.
		</p>
		<p class="text-white text-left text-2xl mb-10">
			Hydrogen is an excellent source of energy due to its high energy content despite its light
			weight. 1kg of hydrogen contains 33.33 kWh of usable energy.
		</p>
		<p class="text-white text-left text-2xl">
			Refilling the hydrogen tanks takes 3-5 minutes. The large tanks and high efficiency of H2 Fuel
			Cells allows for this 33,000 lb vehicle to travel 400 miles on one tank, double the required
			range.
		</p>
	</div>
</div>

<div class="flex flex-row px-2 py-16 flex-wrap justify-around bg-gray-900" id="city">
	<div class="max-w-6xl mx-2 basis-1/2 grow">
		<Carousel
			images={miniImages}
			showCaptions={false}
			showThumbs={false}
			divClass="overflow-hidden relative h-auto rounded-lg"
			indicatorClass="w-3 h-3 rounded-full bg-gray-600 hover:bg-gray-900 opacity-60 hidden sm:inline"
		/>
		<p class="text-center text-white">Utilize the arrows to move through the slides</p>
	</div>
	<div class="basis-1/2 grow my-10 px-10 self-center">
		<h1 class="text-white text-right text-5xl font-bold mb-2">2030 MINI Venturman</h1>
		<h2 class="text-white text-right text-3xl mb-8">Office / Activity Vehicle</h2>
		<p class="text-white text-right text-2xl mb-10">
			As a result of the 2020 Covid lockdown, the number of young adults working from home has risen dramatically. This has led to an increase in symptoms relating to depression and anxiety. 
		</p>
		<p class="text-white text-right text-2xl mb-10">
			As the numbers of people working remotely continues to rise, a vehicle that is capable of providing both a mobile office space as well as an escape from monotony will be beneficial to the mental health of those who work remotely. 
		</p>
		<p class="text-white text-right text-2xl mb-10">
			This vehicle allows the user to travel and explore as much as they want while also allowing them to stay on top of their work no matter where they go.
		</p>
	</div>
</div>

<div class="flex flex-row-reverse px-2 py-16 flex-wrap justify-around bg-gray-800" id="johndeere">
	<div class="max-w-6xl mx-2 basis-1/2 grow" id="coupe">
		<Carousel
			images={deereImages}
			showCaptions={false}
			showThumbs={false}
			divClass="overflow-hidden relative h-auto rounded-lg"
			indicatorClass="w-3 h-3 rounded-full bg-gray-600 hover:bg-gray-900 opacity-60 hidden sm:inline"
		/>
		<p class="text-center text-white">Utilize the arrows to move through the slides</p>
	</div>
	<div class="basis-1/2 grow my-10 px-10 self-center">
		<h1 class="text-white text-left text-5xl font-bold mb-2">Sub-Surface Irrigation Drone</h1>
		<h2 class="text-white text-left text-3xl mb-8">The Future of Farming</h2>
		<p class="text-white text-left text-2xl mb-10">
			By 2053, experts predict an "extreme heat belt" will cut across the United States, stretching
			from Texas and Louisiana to Illinois and southwest Michigan. With much of America caught in an
			extreme heat wave, the sub-surface irrigation drone will be needed to moisturize soil.
		</p>
	</div>
</div>

<div class="flex flex-col px-2 py-16 justify-center bg-gray-900" id="resume">
	<h1 class="text-white text-center text-5xl font-bold mb-5">Resume</h1>
	<div class="flex justify-center">
		<embed src="/resume.pdf" width="1000" class="h-[55rem] sm:h-[65rem] md:h-[75rem] lg:h-[81rem]" type="application/pdf" />
	</div>
</div>

<div class="px-2 py-16 bg-gray-800" id="contact">
	<h2 class="text-white text-center text-5xl font-bold mb-10">Let's get in touch!</h2>
	<div class="flex justify-center">
		<form
			action="https://mailthis.to/chrisgwagner.design@gmail.com"
			method="POST"
			encType="multipart/form-data"
			class="bg-gray-900 p-8 rounded-lg w-96"
		>
			<div class="mb-6">
				<Label for="name" class="block mb-2">Your Name</Label>
				<Input name="name" id="name" type="text" placeholder="John Doe" required />
			</div>
			<div class="mb-6">
				<Label for="email" class="block mb-2">Your Email</Label>
				<Input name="email" id="email" type="email" placeholder="name@example.com" required>
					<svg
						slot="left"
						aria-hidden="true"
						class="w-5 h-5 text-gray-500 dark:text-gray-400"
						fill="currentColor"
						viewBox="0 0 20 20"
						xmlns="http://www.w3.org/2000/svg"
						><path
							d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"
						/><path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z" /></svg
					>
				</Input>
			</div>
			<div class="mb-6">
				<Label for="textarea" class="mb-2">Your message</Label>
				<Textarea name="message" id="textarea" placeholder="Your message" rows="4" />
			</div>
			<div class="flex justify-center">
				<Button type="submit">Submit</Button>
			</div>
		</form>
	</div>
</div>
